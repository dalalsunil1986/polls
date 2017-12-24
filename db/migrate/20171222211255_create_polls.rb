class CreatePolls < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.text :question

      t.timestamps
    end
  end
end
