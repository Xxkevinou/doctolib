class CreateAppos < ActiveRecord::Migration[5.2]
  def change
    create_table :appos do |t|
    	t.datetime :datetime
    	t.belongs_to :patients
    	t.belongs_to :doctors

      t.timestamps
    end
  end
end
