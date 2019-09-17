<script src='https://www.google.com/recaptcha/api.js'></script>

<div class="g-recaptcha" data-sitekey="xxx"></div>

<?php
// captcha
$captcha = false;
$secret = "xxx";
$response = $_POST["g-recaptcha-response"];
$verify = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret={$secret}&response={$response}");
$captcha_success = json_decode($verify);
if ($captcha_success->success == false) {
	// captcha error message
} else if ($captcha_success->success == true) {
	$captcha = true;
}
