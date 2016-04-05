class Creative < ActiveRecord::Base
  belongs_to :ad

  validates :bid, 	presence: true
  validates :bid,	:numericality => {:greater_than => 0}
  validates :adtext, presence: true
end
