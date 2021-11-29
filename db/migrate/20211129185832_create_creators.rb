class CreateCreators < ActiveRecord::Migration[6.0]
  def change
    create_table :creators do |t|
      t.string :stage_name
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
