class Targeting < ActiveRecord::Base
  belongs_to :ad

  serialize :places
end
