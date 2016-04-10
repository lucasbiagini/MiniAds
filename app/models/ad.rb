class Ad < ActiveRecord::Base

	has_many :creatives, inverse_of: :ad, dependent: :destroy
	has_many :targetings, inverse_of: :ad, dependent: :destroy

	validates :budget, presence: true
	validates :budget, :numericality => {:greater_than => 0}
	validates_presence_of :creatives
	validates_presence_of :targetings

	accepts_nested_attributes_for :creatives, reject_if: proc {|attributes| attributes['bid'].blank? && attributes['adtext'].blank?}, allow_destroy: true
	accepts_nested_attributes_for :targetings, reject_if: :all_blank, allow_destroy: true

	def change
		create_table :ads do |t|
			t.float :budget

			t.timestamps null: false
		end
	end
end
