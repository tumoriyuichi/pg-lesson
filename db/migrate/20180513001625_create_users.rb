class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

    	t.string :name
    	t.string :age
    	t.string :adress
    	t.string :gender
    	t.string :program
    	t.string :skils
    	t.timestamps
    	
    end
  end
end
