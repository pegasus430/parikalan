class CreateRegisterSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :register_steps do |t|
      t.string :icon
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
