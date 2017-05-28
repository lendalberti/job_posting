class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer  :user_id,     null: false
      t.integer  :category_id, null: false
      t.string   :location,    null: false
      t.integer  :status_id,   null: false
      t.text     :description, null: false

      t.timestamps
    end

    add_foreign_key :jobs, :users,      on_delete: :cascade
    add_foreign_key :jobs, :categories, on_delete: :cascade
    add_foreign_key :jobs, :status,     on_delete: :cascade
  end
end
