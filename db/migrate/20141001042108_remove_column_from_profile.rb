class RemoveColumnFromProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :taline, :string
    add_column :profiles, :tagline, :string
  end
end
