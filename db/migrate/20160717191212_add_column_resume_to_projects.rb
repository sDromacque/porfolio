class AddColumnResumeToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :resume, :string
  end
end
