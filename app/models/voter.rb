class Voter < ActiveRecord::Base
  has_many :candidates

  validates :name, presence: true
  validates :party, presence: true
end
