class AddSeoTitleToPlanPaymentPages < ActiveRecord::Migration[5.1]
  def change
    add_column :plan_payment_pages, :seo_title, :string
    add_column :plan_payment_pages, :seo_keyword, :string
    add_column :plan_payment_pages, :seo_description, :string
  end
end
