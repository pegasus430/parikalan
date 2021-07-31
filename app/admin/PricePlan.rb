ActiveAdmin.register PricePlan do
	menu parent: 'Plans & Pricing'
	extend ActiveAdminSetup
	setup_model(PricePlan)
end