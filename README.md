Steps:

1. Add the following to the form:

<%= recaptcha_action('form_fill') %>

In the JS object might be needed.

new_recaptcha_token: $('.modal input[name="new_recaptcha_token"]').val()

2. In the controller, where the model is being created, add this:

Also add: 

skip_before_action :verify_authenticity_token

recaptha_humanity_score: humanity_score

3. In the model, where the email is being sent, add this: 

 if made_by_human? 

 in the end of the line.