ActiveAdmin.register CustomPayment do
	menu parent: 'Payments & Inquiries'
	extend ActiveAdminSetup
	setup_model(CustomPayment)
end