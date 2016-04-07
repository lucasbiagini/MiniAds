class Place < ActiveRecord::Base
  belongs_to :targeting

  validates :name, presence: true
  
end
