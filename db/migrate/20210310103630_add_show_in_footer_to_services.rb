class AddShowInFooterToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :show_in_footer, :boolean
  end
end
