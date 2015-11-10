class AddFieldsToUsers < ActiveRecord::Migration
  def change
      add_column :users, :name, :string
      add_column :users, :phone, :string
      add_column :users, :city, :string
      add_column :users, :country, :string

      add_column :users, :active, :boolean
      add_column :users, :summary, :text
      add_column :users, :description, :text

	# social
      add_column :users, :website, :string
      add_column :users, :blog, :string
      add_column :users, :linkedin, :string
      add_column :users, :twitter, :string

	# Roles
      add_column :users, :admin, :boolean
      add_column :users, :editor, :boolean
      add_column :users, :author, :boolean
  end

end

