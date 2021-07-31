<?php
if(isset($_POST['url'])){
   $email = $_POST['url'];
    if(!empty($email) && !filter_var($email, FILTER_VALIDATE_EMAIL) === false){
        // MailChimp API credentials
		require_once  'MCAPI.class.php'; // mailchimp class library
		
        $apiKey = 'c9a2d74ee39c18ea82584ad972bb66b3-us15';
        $listID = '7d73f93b10';
		$apiUrl = 'http://api.mailchimp.com/1.3/';
		//CONFIGURE VARIABLES START.		
		$api = new MCAPI($apiKey);		
		$merge_vars = array('FNAME' => '');
		
		//CONFIGURE VARIABLES FINISH.
		//MAKE API CALLSE FOR MAILCHIMP START.
		
		$retval = $api->listSubscribe( $listID, $email, $merge_vars );
		//MAKE API CALLSE FOR MAILCHIMP FINISH.
		//CONFIGURE ERROR OR SUCCESS PROCESS START.
		if ($api->errorCode){
			$msg= $api->errorMessage."\n";
		} else {
			$msg= '<p style="color: #34A853">'."Successfully Subscribed. Please check confirmation email.".'</p>';
		}
		echo json_encode($msg);
		die();
    }
  }
?>