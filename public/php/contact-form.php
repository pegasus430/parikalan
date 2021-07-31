<?php
if(isset($_POST["action"])) {
	$name = $_POST['name'];        // Sender's name
	$email = $_POST['email'];      // Sender's email address
	$phone  = $_POST['phone'];     // Sender's phone number
	$message = $_POST['message'];  // Sender's message
	$headers = 'From: Demo Contact Form <demo@domain.com>' . "\r\n";

	$to = 'demo@domain.com';     // Recipient's email address
	$subject = 'Message from Webster Contact Demo '; // Message title

	$body = " From: $name \n E-Mail: $email \n Phone : $phone \n Message : $message"  ;
	
	// init error message
	$errmsg='';
	// Check if name has been entered
	if (isset($_POST['name']) && $_POST['name'] == '') {
		$errmsg .= '<p>Please enter your name.</p>';
	}
	// Check if email has been entered and is valid
	if (!$_POST['email'] || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
		$errmsg .= '<p>Please enter a valid email address.</p>';
	}
	//Check if phone number has been entered
	if ( isset($_POST['phone']) && $_POST['phone'] == '') {
		$errmsg .= '<p>Please enter your phone number.</p>';
	}
	
	//Check if message has been entered
	if ( isset($_POST['message']) && $_POST['message'] == '') {
		$errmsg .= '<p>Please enter your message.</p>';
	}

	/* Check Google captch validation */
	if( isset( $_POST['g-recaptcha-response'] ) ){
		$error_message = validation_google_captcha( $_POST['g-recaptcha-response'] );
		if($error_message!=''){
			$errmsg .= $error_message;
		}
	}	
	
	$result='';
	// If there are no errors, send the email
	if (!$errmsg) {
		if (mail ($to, $subject, $body, $headers)) {
			$result='<div class="alert alert-success">Thank you for contacting us. Your message has been successfully sent. We will contact you very soon!</div>';
		}
		else {
		  $result='<div class="alert alert-danger">Sorry there was an error sending your message. Please try again later.</div>';
		}
	}
	else{
		$result='<div class="alert alert-danger">'.$errmsg.'</div>';
	}
	echo $result;
 }

/*
 * Validate google captch
 */
function validation_google_captcha( $captch_response){

	/* Replace google captcha secret key*/
	$captch_secret_key = 'Add your secret key here';
	
	$data = array(
            'secret'   => $captch_secret_key,
            'response' => $captch_response,
			'remoteip' => $_SERVER['REMOTE_ADDR']
        );
	$verify = curl_init();
	curl_setopt($verify, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");
	curl_setopt($verify, CURLOPT_POST, true);
	curl_setopt($verify, CURLOPT_POSTFIELDS, http_build_query($data));
	curl_setopt($verify, CURLOPT_SSL_VERIFYPEER, false);
	curl_setopt($verify, CURLOPT_RETURNTRANSFER, true);
	$response = curl_exec($verify);
	$response = json_decode( $response, true );
	$error_message='';
	if( isset($response['error-codes']) && !empty($response['error-codes'])){
		if( $response['error-codes'][0] == 'missing-input-secret' ){
			
			$error_message = '<p>The recaptcha secret parameter is missing.</p>';
			
		}elseif( $response['error-codes'][0] == 'invalid-input-secret' ){
			
			$error_message = '<p>The recaptcha secret parameter is invalid or malformed.</p>';
			
		}elseif( $response['error-codes'][0] == 'missing-input-response' ){
			
			$error_message = '<p>The recaptcha response parameter is missing.</p>';
			
		}elseif( $response['error-codes'][0] == 'invalid-input-response' ){
			
			$error_message = '<p>The recaptcha response parameter is invalid or malformed.</p>';
			
		}elseif( $response['error-codes'][0] == 'bad-request' ){
			
			$error_message = '<p>The recaptcha request is invalid or malformed.</p>';
		}
	}	
	if( $error_message !=''){
		return $error_message;
	}else{
		return '';
	}
  }
