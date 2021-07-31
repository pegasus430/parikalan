class AddCustomFormButtonTextToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :custom_form_button_text, :string
  end
end
