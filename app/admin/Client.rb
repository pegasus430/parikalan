ActiveAdmin.register Client do
	menu parent: 'Pages & Content'
	extend ActiveAdminSetup
	setup_model(Client)
end