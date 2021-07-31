ActiveAdmin.register Payment do
	menu parent: 'Payments & Inquiries'
	extend ActiveAdminSetup
	setup_model(Payment)
end