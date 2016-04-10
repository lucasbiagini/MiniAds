class Place < ActiveRecord::Base
  belongs_to :targeting, inverse_of: :places
  
end
