class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :poll, foreign_key: true
      t.references :choice, foreign_key: true
      t.string :ip_address

      t.timestamps
    end
  end
end
