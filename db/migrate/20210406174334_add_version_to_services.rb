class AddVersionToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :version, :integer
  end
end
