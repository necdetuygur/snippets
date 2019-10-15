<?php
$public = "XXX";
$secret = "XXX";

if($_POST){
	header("content-type: application/json; charset=utf8");
	/**/
	$captcha = false;
	$response = $_POST["g-recaptcha-response"];
	$verify = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret={$secret}&response={$response}");
	$captcha_success = json_decode($verify);
	$captcha = $captcha_success->success == true;
	/**/
	$_POST["captcha"] = $captcha ? "SUCCESS" : "FAIL";
	print_r(json_encode($_POST));
	exit;
}
?>
<script src="https://www.google.com/recaptcha/api.js?render=<?=$public?>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
var recaptchaToken;
function LoadRecaptcha(){
	grecaptcha.ready(function() {
		grecaptcha.execute('<?=$public?>', {action: 'homepage'}).then(function(token) {
			recaptchaToken = token;
		});
	});
};

LoadRecaptcha();

setTimeout(() => {
	$.post("PHP_Google_reCaptcha_v3.php", {
		"g-recaptcha-response": recaptchaToken
	}, r => {
		console.log(JSON.stringify(r,2,2));
	});
}, 3e3);
</script>
