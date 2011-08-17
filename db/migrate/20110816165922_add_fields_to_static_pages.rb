class AddFieldsToStaticPages < ActiveRecord::Migration
  def self.up
    add_column :static_pages, :title, :string
    add_column :static_pages, :type, :string
  end

  def self.down
    remove_column :static_pages, :title
    remove_column :static_pages, :type
  end
end
