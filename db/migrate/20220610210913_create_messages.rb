class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :to
      t.string :from
      t.string :status
      t.string :body
      t.string :message_sid
      t.string :account_sid
      t.string :messaging_service_sid
      t.string :direction
      t.references :user, null: false, foreign_key: true
      t.references :conversation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
