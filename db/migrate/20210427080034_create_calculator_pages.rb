class CreateCalculatorPages < ActiveRecord::Migration[5.1]
  def change
    create_table :calculator_pages do |t|
      t.string :header_image
      t.string :gst_calculator_title
      t.string :home_loan_calculator_title
      t.string :personal_loan_calculator_title
      t.string :car_loan_calculator_title
      t.string :calculators_title

      t.timestamps
    end
  end
end
