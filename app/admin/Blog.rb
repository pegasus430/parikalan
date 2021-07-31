ActiveAdmin.register Blog do
	menu parent: 'Blog'
	extend ActiveAdminSetup
	setup_model(Blog)
end