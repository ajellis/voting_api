require 'test_helper'


class VoteTest < ActiveSupport::TestCase
  def test_vote_must_have_voter_id
    a = Vote.create(voter_id: 123, candidate_id: 12345)
    b = Vote.create(candidate_id: 12345)
    assert a.save
    refute b.save
  end

  def test_vote_must_have_candidate_id
    a = Vote.create(voter_id: 123, candidate_id: 12345)
    b = Vote.create(voter_id: 123)
    assert a.save
    refute b.save
  end
end
