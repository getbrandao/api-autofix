class CreateDebits < ActiveRecord::Migration[5.1]
  def change
    create_table :debits do |t|
      t.string :description, null: false, default:""
      t.date :date, null: false, default: Time.now
      t.float :value, null: false, default: 0
      t.integer :types, null: false, default: 0

      t.timestamps null: false
    end
  end
end
