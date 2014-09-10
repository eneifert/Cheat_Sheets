-- Generate the migration file
$ rails generate migration AddPartNumberToProducts

-- Add a column
$ rails generate migration AddPartNumberToProducts part_number:string

will generate: 
class AddPartNumberToProducts < ActiveRecord::Migration
  def change
    add_column :products, :part_number, :string
  end
end