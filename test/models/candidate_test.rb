require 'test_helper'
require 'minitest/pride'

class CandidateTest < ActiveSupport::TestCase
  def test_candidates_must_have_names
  a = Candidate.create(name: "Bernie Sanders", party: "Democrat")
  b = Candidate.create(party: "Democrat")
  assert a.save
  refute b.save
  end

  def test_candidates_must_have_party
    a = Candidate.create(name: "Bernie Sanders", party: "Democrat")
    b = Candidate.create(name: "Bernie Sanders")
    assert a.save
    refute b.save
  end
end
