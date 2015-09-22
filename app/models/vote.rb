class Vote < ActiveRecord::Base
  has_many :candidates
  belongs_to :voter
end
