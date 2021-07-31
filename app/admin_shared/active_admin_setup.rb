module ActiveAdminSetup

	def setup_model(model_name)
		unless ActiveRecord::Migrator.needs_migration?
			@model_name = model_name
			setup_params_to_permit
			permit_all_params_except_for_created_at_and_updated_at
			set_up_controller
			set_up_index
			set_up_form
		end
	end

	def permit_all_params_except_for_created_at_and_updated_at
		permit_params params_to_permit
	end

	def set_up_index
		index do
			actions
			params_to_show_for_index.each do |col_name|
				image_method_name = col_name.to_s + '_url'
				if model.new.respond_to? image_method_name.to_sym
					column col_name.to_s.titleize do | obj |
						image_tag obj.send(col_name), class: 'thumb'
					end
				elsif model.column_for_attribute(col_name).type == :text
					# column col_name.to_s.titleize do | obj |
					# 	raw obj.send(col_name)
					# end
				elsif col_name.to_s.ends_with?("_id")
					column col_name.to_s.gsub('_id', '').to_sym
				else
					column col_name
				end
			end
			actions
		end
	end

	def set_up_form
		form do |f|
		    f.inputs do
		      params_for_form.each do |param|
		      	image_method_name = param.to_s + '_url'
		      	if f.object.respond_to? image_method_name.to_sym
		      		f.input param, hint: f.object.send(param).nil? ? '' : image_tag(f.object.send(param), class: 'thumb')
		      	elsif f.object.column_for_attribute(param).type == :text && param != :availabale_fetaures && param != :not_availabale_fetaures
		      		if param.to_s.ends_with?('javascript')
		      			f.input param
		      		else
			      		div do
			      			param.to_s.gsub("_", " ").titleize
			      		end
			      		div do
			      			f.input param, as: :ckeditor, label: false
			      		end
		      		end
		      	elsif param.to_s.end_with? "_id"
		      		f.input param.to_s.gsub('_id', '').to_sym
		      	else
		      		f.input param
		      	end
		      end
		    end
			f.actions
		end
	end

	def params_to_permit
		@params ||= setup_params_to_permit
	end

	def setup_params_to_permit
		@params_to_permit = []
		@model_name.column_names.each do |col_name|
			next if ['id', 'created_at', 'updated_at'].include? col_name
			@params_to_permit << col_name.to_sym
		end
	end

	def set_up_controller
	  controller do
	    
	    before_action :set_up_params_to_show_for_index, only: [:index]
	    before_action :send_to_new_or_edit, only: [:index]
	    before_action :model
	    before_action :params_for_form

		def set_up_params_to_show_for_index
			@params_to_show_for_index = []
			model.column_names.each do |col_name|
				next if ['id', 'updated_at', 'created_at'].include? col_name
				@params_to_show_for_index << col_name.to_sym
			end
		end


		def send_to_new_or_edit
			if (model_name_as_string.ends_with?('Page') && model_name_as_string != 'PolicyPage') || model_name_as_string == 'GeneralSetting' || model_name_as_string == 'ThankYouPageSetting' || model_name_as_string.include?('Business') || model_name_as_string.include?('HomePagePopup')  || model_name_as_string.include?('SiteTheme')
				if model.all.count > 0
					first_entry = model.first
					edit_path_method_name_as_string = 'edit_admin_' + model_name_for_path + '_path'
					redirect_to self.send(edit_path_method_name_as_string.to_sym, first_entry)
				else
					new_path_method_name_as_string = 'new_admin_' + model_name_for_path + '_path'
					redirect_to self.send(new_path_method_name_as_string.to_sym)
				end
			end
		end

		def params_for_form
			@params_for_form = []
			model.column_names.each do |col_name|
				next if ['id', 'updated_at', 'created_at'].include? col_name
				@params_for_form << col_name.to_sym
			end
		end

		def model
			@model = model_name_as_string.constantize
		end

		def model_name_as_string
			params[:controller].split("/")[1].titleize.gsub(' ', '').singularize
		end

		def model_name_for_path
			params[:controller].split("/")[1].singularize
		end

	  end
	end

end