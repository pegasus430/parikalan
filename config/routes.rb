Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)

  get '/',                           to: 'home#index',                         as: 'home'
  get '/about',                      to: 'about#index',                        as: 'about'
  get '/offer',                      to: 'offer#index',                        as: 'offer'
  get '/service',                    to: 'service#index',                      as: 'service'
  get '/thank_you/:type',            to: 'service#thank_you',                  as: 'thank_you'
  get '/contact',                    to: 'contact#index',                      as: 'contact'
  get '/blog',                       to: 'blog#index',                         as: 'blog'
  get '/cc_search',                  to: 'cupon_code_search#index',            as: 'cupon_code_search'
  get '/bp/:slug',                   to: 'blog#blog_grid',                     as: 'blog_grid'
  get '/b/:slug',                    to: 'blog#show',                          as: 'blog_detail'
  get '/pp/:slug',                   to: 'policy#show',                        as: 'policy_page'
  post '/enquiry',                   to: 'enquiry#create',                     as: 'enquiry'
  post '/request_callback_enquiry',  to: 'request_callback_enquiry#create',    as: 'request_callback_enquiry'

  resources :fasai_registration_inquiry, only: [:create, :update ]
  resources :fssai_renewal_inquiry, only: [:create, :update ]

  resources :fssai_modification_inquiry, only: [:create, :update ]
  resources :home_loan_inquiry, only: [:create, :update ]
  resources :gem_registration_inquiry, only: [:create, :update ]
  resources :msme_registration_inquiry, only: [:create, :update ]
  resources :personal_loan_inquiry, only: [:create, :update ]
  resources :loan_against_property_inquiry, only: [:create, :update ]
  resources :offer_inquiry, only: [:create, :update ]

  resources :plan_payment, only: [ :new, :create, :update ]
  resources :custom_payment, only: [ :create, :update ]

  get '/gst_calculator',         to: 'calculators/gst_calculator#show',  as: 'gst_calculator'
  get '/loan_calculator/:type',  to: 'calculators/loan_calculator#show', as: 'loan_calculator'

  get '/pay_now', to: 'pay_now#new',  as: 'pay_now'
  resources :payments, only: [ :create, :update ]

  get '/:slug',            to: 'service#show',                    as: 'service_detail'

  root 'home#index'

end
