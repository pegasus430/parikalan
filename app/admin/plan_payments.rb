ActiveAdmin.register PlanPayment do
	menu parent: 'Payments & Inquiries'
	extend ActiveAdminSetup
	setup_model(PlanPayment)
end