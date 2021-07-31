class AddFormInstructionFromService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :form_instruction, :text
  end
end
