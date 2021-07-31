ActiveAdmin.register CouponCode do
	menu parent: 'Config'
	extend ActiveAdminSetup
	setup_model(CouponCode)
end