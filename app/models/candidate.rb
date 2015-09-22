class Candidate < ActiveRecord::Base
  has_many :voters

  validates :name, presence: true
  validates :party, presence: true

end
