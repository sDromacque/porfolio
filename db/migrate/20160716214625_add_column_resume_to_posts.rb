class AddColumnResumeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :resume, :string
  end
end
