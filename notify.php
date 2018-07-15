<?php

require 'db.php';
$d="test Message";
if(isset($_GET['msg']))
{
$d=$_GET['msg'];
}
$sql="SELECT token from fcm";
$result1=mysql_query($sql);
#API access key from Google API's Console
    define( 'API_ACCESS_KEY', 'AAAAuog4snM:APA91bEEs-xORAGwoKVbux-hj1gh_oOyAVlRw144wLBn4r04-ua25VEA4wtbXaO315cLle9NVH3mT43LHnM8QUFC9b6o8HUM-FyRM2PLLnUC4MsDcVRGfs8FVFlMrhfzO57KiNouL2Ce' );    



while($registrationIds=mysql_fetch_array($result1))
{	
#prep the bundle
       $msg = array
          (
		'body' 	=> $d,
		'title'	=> 'PLACEMENT',
             	'icon'	=> 'icon',/*Default Icon*/
              	'sound' => 'mySound'/*Default sound*/
          );
	$fields = array
			(
				'to'		=> $registrationIds['token'],
				'notification'	=> $msg
			);
	
	$headers = array
			(
				'Authorization: key=' . API_ACCESS_KEY,
				'Content-Type: application/json'
			);
#Send Reponse To FireBase Server	
		$ch = curl_init();
		curl_setopt( $ch,CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send' );
		curl_setopt( $ch,CURLOPT_POST, true );
		curl_setopt( $ch,CURLOPT_HTTPHEADER, $headers );
		curl_setopt( $ch,CURLOPT_RETURNTRANSFER, true );
		curl_setopt( $ch,CURLOPT_SSL_VERIFYPEER, false );
		curl_setopt( $ch,CURLOPT_POSTFIELDS, json_encode( $fields ) );
		$result = curl_exec($ch );
		curl_close( $ch );
#Echo Result Of FireBase Server
echo $result;
}
?>



