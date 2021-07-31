class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.string :image
      t.string :name
      t.string :designation
      t.text :description

      t.timestamps
    end
  end
end
