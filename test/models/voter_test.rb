require 'test_helper'
require 'minitest/pride'

class VoterTest < ActiveSupport::TestCase
  def test_voter_must_have_name
    a = Voter.create(name: "Anthony Ellis", party: "Democrat")
    b = Voter.create(party: "Democrat")
    assert a.save
    refute b.save
  end

  def test_voter_must_have_party
    a = Voter.create(name: "Anthony Ellis", party: "Democrat")
    b = Voter.create(name: "Anthony Ellis")
    assert a.save
    refute b.save
  end
end
