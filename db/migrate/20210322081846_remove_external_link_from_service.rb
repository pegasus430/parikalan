class RemoveExternalLinkFromService < ActiveRecord::Migration[5.1]
  def change
  	# connection.execute("PRAGMA defer_foreign_keys = ON")
	  # connection.execute("PRAGMA foreign_keys = OFF")
    remove_column :services, :external_lexternal_link, :string
    # connection.execute("PRAGMA foreign_keys = ON")
	  # connection.execute("PRAGMA defer_foreign_keys = OFF")
  end
end
