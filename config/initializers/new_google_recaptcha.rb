if Object.const_defined?('NewGoogleRecaptcha')
  NewGoogleRecaptcha.setup do |config|
    config.site_key   = "6Lfl88kaAAAAAJ6aaJcxau_V2KpjHXsgBruC36B5"
    config.secret_key = "6Lfl88kaAAAAAC6hJ6T6V62GIhqlc6jFNSqi2PzN"
    config.minimum_score = 0.5
  end
end
