class AddTokenAuthenticableToAuthors < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :authentication_token, :text
    add_column :authors, :authentication_token_created_at, :datetime

    add_index :authors, :authentication_token, unique: true
  end
end
