class CreateChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :choices do |t|
      t.references :poll, foreign_key: true
      t.string :text

      t.timestamps
    end
  end
end
