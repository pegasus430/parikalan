class AddCustomFormNameToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :custom_form_name, :string
  end
end
