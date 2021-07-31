# the_environment = ENV.fetch("RAILS_ENV") { "development" }

# if the_environment == 'production'
# 	# Puma conf for production
# 	workers 1
# 	threads 0, 5
# 	app_dir = File.expand_path("../..", __FILE__)
# 	shared_dir = "#{app_dir}/shared"
# 	environment 'production'
# 	bind "unix://#{shared_dir}/sockets/puma.sock"
# 	pidfile "#{shared_dir}/pids/puma.pid"
# 	state_path "#{shared_dir}/pids/puma.state"
# else
# 	# Puma conf for dvelopment
# 	threads 5, 5
# 	port 3000
# 	environment "development"
# 	plugin :tmp_restart
# end

workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
  ActiveRecord::Base.establish_connection
end
