class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :nickname,   null: false
      t.string :study_rule, null: false
      t.text :text,         null: false
      t.timestamps
    end
  end
end
