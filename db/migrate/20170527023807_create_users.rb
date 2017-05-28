class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :first_name,   null: false
      t.string  :last_name,    null: false
      t.string  :email,        null: false, default: ''
      t.string  :phone,        null: false, default: ''

      t.timestamps
    end
  end
end
