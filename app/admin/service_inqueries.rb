ActiveAdmin.register ServiceInquery do

	menu parent: 'Payments & Inquiries'

	filter :name
	filter :phone
	filter :processed
	filter :email

	extend ActiveAdminSetup
	setup_model(ServiceInquery)
end