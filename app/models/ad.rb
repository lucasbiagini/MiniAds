class Ad < ActiveRecord::Base
	def change
		create_table :ads do |t|
			t.float :budget

			t.timestamps null: false
		end
	end
end
