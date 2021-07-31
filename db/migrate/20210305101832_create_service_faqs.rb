class CreateServiceFaqs < ActiveRecord::Migration[5.1]
  def change
    create_table :service_faqs do |t|
      t.string :question
      t.text :answer
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
