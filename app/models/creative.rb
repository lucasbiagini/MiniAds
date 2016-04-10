class Creative < ActiveRecord::Base
  belongs_to :ad, inverse_of: :creatives

  validates :bid, 	presence: true
  validates :bid,	:numericality => {:greater_than => 0}
  validates :bid,	:numericality => {:less_than_or_equal_to => :get_budget}
  validates :adtext, presence: true

  def get_budget
  	ad.budget
  end
end
