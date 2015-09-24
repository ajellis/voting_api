class AddAcessTokenColumnToVoter < ActiveRecord::Migration
  def change
    add_column :voters, :access_token, :string
  end
end
