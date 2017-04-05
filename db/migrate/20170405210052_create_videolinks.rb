class CreateVideolinks < ActiveRecord::Migration
  def change
    create_table :videolinks do |t|
      t.string :link
      t.references :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
