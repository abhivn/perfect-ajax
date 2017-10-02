class AddIsActiveToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :is_active, :boolean, default: false
  end
end
