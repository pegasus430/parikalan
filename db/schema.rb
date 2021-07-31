# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20210615100804) do

  create_table "about_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "header_image"
    t.string "header_title"
    t.string "about_section_image"
    t.string "about_section_title"
    t.string "about_section_subtitle"
    t.text "about_section_description"
    t.string "usp_icon_1"
    t.string "usp_title_1"
    t.string "usp_description_1"
    t.string "usp_icon_2"
    t.string "usp_title_2"
    t.string "usp_description_2"
    t.string "usp_icon_3"
    t.string "usp_title_3"
    t.string "usp_description_3"
    t.string "history_section_title"
    t.string "history_section_subtitle"
    t.string "seo_title"
    t.string "seo_keyword"
    t.string "seo_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_admin_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "blog_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "image"
    t.string "name"
    t.string "url_slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "header_image"
    t.string "header_title"
    t.string "seo_title"
    t.string "seo_keyword"
    t.string "seo_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "image"
    t.string "name"
    t.string "date"
    t.string "short_description"
    t.text "long_description"
    t.bigint "blog_category_id"
    t.boolean "show_on_homepage"
    t.string "url_slug"
    t.string "seo_title"
    t.string "seo_keyword"
    t.string "seo_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_category_id"], name: "index_blogs_on_blog_category_id"
  end

  create_table "calculator_links", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "title"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calculator_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "header_image"
    t.string "gst_calculator_title"
    t.string "home_loan_calculator_title"
    t.string "personal_loan_calculator_title"
    t.string "car_loan_calculator_title"
    t.string "calculators_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "header_image"
    t.string "header_title"
    t.string "contact_section_title"
    t.string "contact_section_subtitle"
    t.string "form_section_title"
    t.string "seo_title"
    t.string "seo_keyword"
    t.string "seo_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coupon_codes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "code"
    t.integer "cupon_type"
    t.integer "percentage_off"
    t.integer "max_percentage_off_amount"
    t.integer "amount_off"
    t.integer "min_purchase_amount"
    t.date "valid_till"
    t.integer "max_number_of_clients"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custom_payments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.integer "amount_paid"
    t.string "message"
    t.string "payment_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "recaptha_humanity_score", limit: 24
    t.string "coupon_code"
  end

  create_table "fasai_registration_inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "nature_of_business"
    t.string "expected_turnover"
    t.string "business_address"
    t.string "business_name"
    t.string "pincode"
    t.string "business_entity"
    t.string "registration_tenure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_ref"
    t.integer "amount"
    t.float "recaptha_humanity_score", limit: 24
  end

  create_table "features", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "icon"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fssai_modification_inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "type_of_modification"
    t.string "applicant_name"
    t.string "email"
    t.string "phone"
    t.string "food_items_want_to_add"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_ref"
    t.integer "amount"
    t.float "recaptha_humanity_score", limit: 24
  end

  create_table "fssai_renewal_inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "type_of_renewal"
    t.string "organization_name"
    t.string "applicant_name"
    t.string "email"
    t.string "phone"
    t.string "license_number"
    t.string "tenure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_ref"
    t.integer "amount"
    t.float "recaptha_humanity_score", limit: 24
  end

  create_table "gem_registration_inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name_of_business_firm"
    t.string "address_of_business_firm"
    t.string "nature_business_firm"
    t.string "services_to_be_sell_in_gem"
    t.string "owner_name"
    t.string "owner_aadhar_number"
    t.string "type_of_firm"
    t.string "email"
    t.string "phone"
    t.string "account_holder_name"
    t.string "account_number"
    t.string "ifsc_code"
    t.string "date"
    t.string "income_tax_return"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_ref"
    t.integer "amount"
    t.float "recaptha_humanity_score", limit: 24
  end

  create_table "general_informations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "header_logo"
    t.string "footer_logo"
    t.text "disclaimer"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "phone"
    t.string "email"
    t.string "facebook_page"
    t.string "instagram_page"
    t.string "twiiter_page"
    t.string "linkedin_page"
    t.string "map_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "general_settings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.text "email_header_text"
    t.text "email_footer_text"
    t.string "inquiry_notification_email_address"
    t.string "razor_pay_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "top_bar_content"
  end

  create_table "histories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "date"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_loan_inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "loan_amount"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "property_located"
    t.string "occupation"
    t.string "monthly_emi"
    t.string "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_ref"
    t.integer "amount"
    t.float "recaptha_humanity_score", limit: 24
  end

  create_table "home_page_popups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "title"
    t.string "sub_title"
    t.string "promo_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "banner_image"
    t.string "banner_title"
    t.string "banner_subtitle"
    t.string "about_section_image"
    t.string "about_section_title"
    t.string "about_section_subtitle"
    t.text "about_section_description"
    t.string "price_section_title"
    t.string "price_section_subtitle"
    t.string "price_section_background_image"
    t.string "why_us_section_title"
    t.text "why_us_section_description"
    t.string "usp_image_1"
    t.string "usp_icon_1"
    t.string "usp_title_1"
    t.string "usp_subtitle_1"
    t.string "usp_image_2"
    t.string "usp_icon_2"
    t.string "usp_title_2"
    t.string "usp_subtitle_2"
    t.string "usp_image_3"
    t.string "usp_icon_3"
    t.string "usp_title_3"
    t.string "usp_subtitle_3"
    t.string "usp_image_4"
    t.string "usp_icon_4"
    t.string "usp_title_4"
    t.string "usp_subtitle_4"
    t.string "testimonial_section_title"
    t.string "testimonial_section_subtitle"
    t.string "seo_title"
    t.string "seo_keyword"
    t.string "seo_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "version_number"
  end

  create_table "loan_against_property_inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "loan_amount"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "property_located"
    t.string "type_of_property"
    t.string "property_value"
    t.string "occupation"
    t.string "monthly_emi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_ref"
    t.integer "amount"
    t.float "recaptha_humanity_score", limit: 24
  end

  create_table "msme_registration_inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "aadhaar_number"
    t.string "name_of_applicant"
    t.string "social_category"
    t.string "gender"
    t.string "physically_handicapped"
    t.string "name_of_business"
    t.string "gst_no"
    t.string "type_of_organisation"
    t.string "pan_number"
    t.string "location_of_plant_flat_no"
    t.string "location_of_plant_premise"
    t.string "location_of_plant_road"
    t.string "location_of_plant_area"
    t.string "location_of_plant_city"
    t.string "location_of_plant_pin_no"
    t.string "location_of_plant_state"
    t.string "location_of_plant_district"
    t.string "office_address"
    t.string "email"
    t.string "phone"
    t.string "date_of_commencement_of_business"
    t.string "whether_production"
    t.string "bank_name"
    t.string "bank_account_number"
    t.string "ifsc_code"
    t.string "business_activity"
    t.string "nic_two_digit_code"
    t.string "additional_details_about_business"
    t.string "male_employee"
    t.string "female_employee"
    t.string "other_employee"
    t.string "depreciated_cost"
    t.string "exclusion_of_cost"
    t.string "net_investment"
    t.string "total_turnover_a"
    t.string "total_turnover_b"
    t.string "total_turnover_c"
    t.string "intrested_to_get_registered_on_GeM"
    t.string "intrested_to_get_registered_on_TReDS_portal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_ref"
    t.integer "amount"
    t.float "recaptha_humanity_score", limit: 24
  end

  create_table "offer_inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "payment_ref"
    t.integer "amount"
    t.bigint "offer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "recaptha_humanity_score", limit: 24
    t.index ["offer_id"], name: "index_offer_inquiries_on_offer_id"
  end

  create_table "offer_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "header_title"
    t.string "header_image"
    t.string "seo_title"
    t.string "seo_keyword"
    t.string "seo_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "image"
    t.string "title"
    t.string "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amount_to_pay"
  end

  create_table "pay_now_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "header_image"
    t.string "header_title"
    t.string "seo_title"
    t.string "seo_keyword"
    t.string "seo_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.bigint "service_id"
    t.bigint "price_plan_id"
    t.string "payment_ref"
    t.integer "amount"
    t.string "name"
    t.string "phone"
    t.string "email"
    t.bigint "coupon_code_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "recaptha_humanity_score", limit: 24
    t.index ["coupon_code_id"], name: "index_payments_on_coupon_code_id"
    t.index ["price_plan_id"], name: "index_payments_on_price_plan_id"
    t.index ["service_id"], name: "index_payments_on_service_id"
  end

  create_table "personal_loan_inquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "loan_amount"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "city"
    t.string "residence_type"
    t.string "occupation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_ref"
    t.integer "amount"
    t.float "recaptha_humanity_score", limit: 24
  end

  create_table "plan_payment_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "header_image"
    t.string "header_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "seo_title"
    t.string "seo_keyword"
    t.string "seo_description"
  end

  create_table "plan_payments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "full_name"
    t.string "phone_number"
    t.string "email_address"
    t.string "purchased_item"
    t.string "code"
    t.string "amount_paid"
    t.string "discount_amount"
    t.string "payment_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "recaptha_humanity_score", limit: 24
  end

  create_table "policy_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "title"
    t.string "header_image"
    t.text "policy_body"
    t.string "seo_title"
    t.string "seo_keyword"
    t.string "seo_description"
    t.string "url_slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_plan_features", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "title"
    t.boolean "available"
    t.boolean "not_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "price_plan_id"
    t.index ["price_plan_id"], name: "index_price_plan_features_on_price_plan_id"
  end

  create_table "price_plans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_id"
    t.text "availabale_fetaures"
    t.text "not_availabale_fetaures"
    t.index ["service_id"], name: "index_price_plans_on_service_id"
  end

  create_table "recaptha_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "record_being_created"
    t.text "prarams"
    t.string "humanity_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "register_steps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "icon"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_callback_enquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "recaptha_humanity_score", limit: 24
  end

  create_table "service_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name"
    t.string "url_slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "show_in_footer"
    t.boolean "show_in_affordable_pricing_block"
  end

  create_table "service_faqs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "question"
    t.text "answer"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_service_faqs_on_service_id"
  end

  create_table "service_inqueries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.text "comment"
    t.boolean "processed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_id"
    t.float "recaptha_humanity_score", limit: 24
    t.index ["service_id"], name: "index_service_inqueries_on_service_id"
  end

  create_table "service_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "header_image"
    t.string "header_title"
    t.string "icon_1"
    t.string "number_1"
    t.string "title_1"
    t.string "icon_2"
    t.string "number_2"
    t.string "title_2"
    t.string "icon_3"
    t.string "number_3"
    t.string "title_3"
    t.string "seo_title"
    t.string "seo_keyword"
    t.string "seo_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_sub_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "name"
    t.string "menu_icon"
    t.bigint "service_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_category_id"], name: "index_service_sub_categories_on_service_category_id"
  end

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "image"
    t.string "name"
    t.string "short_description"
    t.text "long_description"
    t.string "highlight_image"
    t.text "overview"
    t.text "benefits"
    t.text "how_to_register"
    t.text "document_required"
    t.text "help_in_registering"
    t.string "url_slug"
    t.boolean "show_on_homepage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_category_id"
    t.boolean "show_in_footer"
    t.boolean "show_in_affordable_pricing_block"
    t.bigint "service_sub_category_id"
    t.string "seo_title"
    t.string "seo_description"
    t.string "seo_keyword"
    t.string "overview_title"
    t.string "benefit_title"
    t.string "how_to_register_title"
    t.string "document_register_title"
    t.string "how_we_help_title"
    t.string "faq_title"
    t.string "custom_form_name"
    t.string "external_website_link"
    t.text "form_instruction"
    t.integer "custom_form_pricing"
    t.string "custom_form_button_text"
    t.integer "version"
    t.index ["service_category_id"], name: "index_services_on_service_category_id"
    t.index ["service_sub_category_id"], name: "index_services_on_service_sub_category_id"
  end

  create_table "stats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "icon_1"
    t.string "title_1"
    t.integer "number_1"
    t.string "icon_2"
    t.string "title_2"
    t.integer "number_2"
    t.string "icon_3"
    t.string "title_3"
    t.integer "number_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "image"
    t.string "name"
    t.string "designation"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thank_you_page_settings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3" do |t|
    t.string "header_image"
    t.string "lead_thankyou_page_title"
    t.text "lead_thankyou_page_body"
    t.text "lead_thank_you_page_javascript"
    t.string "payment_thankyou_page_title"
    t.text "payment_thankyou_page_body"
    t.text "payment_thank_you_page_javascript"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blogs", "blog_categories"
  add_foreign_key "offer_inquiries", "offers"
  add_foreign_key "payments", "coupon_codes"
  add_foreign_key "payments", "price_plans"
  add_foreign_key "payments", "services"
  add_foreign_key "price_plan_features", "price_plans"
  add_foreign_key "price_plans", "services"
  add_foreign_key "service_faqs", "services"
  add_foreign_key "service_inqueries", "services"
  add_foreign_key "service_sub_categories", "service_categories"
  add_foreign_key "services", "service_categories"
  add_foreign_key "services", "service_sub_categories"
end
