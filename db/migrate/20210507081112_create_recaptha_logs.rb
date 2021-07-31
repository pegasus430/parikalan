class CreateRecapthaLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :recaptha_logs do |t|
      t.string :record_being_created
      t.text :prarams
      t.string :humanity_score

      t.timestamps
    end
  end
end
