ActiveAdmin.setup do |config|
  config.site_title = 'Admin Pannel'
  config.current_user_method = :current_admin_user
  config.logout_link_path = :destroy_admin_user_session_path
  config.batch_actions = true
  config.comments_menu = false
  config.localize_format = :long
  config.authentication_method = :authenticate_admin_user!
  meta_tags_options = { viewport: 'width=device-width, initial-scale=1' }
  config.meta_tags = meta_tags_options
  config.meta_tags_for_logged_out_pages = meta_tags_options
  config.register_javascript Ckeditor.cdn_url
end
