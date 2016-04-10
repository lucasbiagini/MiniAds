class Targeting < ActiveRecord::Base
  
  belongs_to :ad
  has_many :places, inverse_of: :targeting, dependent: :destroy

  accepts_nested_attributes_for :places, reject_if: proc {|attributes| attributes['name'].blank?}, allow_destroy: true
end
