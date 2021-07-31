ActiveAdmin.register BlogCategory do
	menu parent: 'Blog'
	extend ActiveAdminSetup
	setup_model(BlogCategory)
end