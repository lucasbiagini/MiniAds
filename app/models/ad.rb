class Ad < ActiveRecord::Base
	has_many :creatives

	validates	:budget, presence: true
	validates	:budget, :numericality => {:greater_than => 0}
	validates	:creatives, presence: true

	accepts_nested_attributes_for :creatives,
		:allow_destroy => true,
		:reject_if => :all_blank

	def change
		create_table :ads do |t|
			t.float :budget

			t.timestamps null: false
		end
	end
end
