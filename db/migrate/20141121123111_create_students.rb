class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :street
      t.string :zip
      t.string :city
      t.string :phone
      t.string :country
      t.references :groups, index: true
      t.references :DanceClasses, index: true
      t.string :email

      t.timestamps
    end
  end
end
