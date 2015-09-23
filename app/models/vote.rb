class Vote < ActiveRecord::Base
  has_many :candidates
  belongs_to :voter

  validates :voter_id, presence: true
  validates :candidate_id, presence: true
  validates :voter_id, uniqueness: true

end
