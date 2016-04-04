class Ad < ActiveRecord::Base

	validates	:budget, presence: true
	validates	:budget, :numericality => {:greater_than => 0}

	def change
		create_table :ads do |t|
			t.float :budget

			t.timestamps null: false
		end
	end
end
