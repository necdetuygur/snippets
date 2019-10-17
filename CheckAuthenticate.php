<?php
function CheckAuth($user,$pw) {
	if(
		empty($_SERVER['PHP_AUTH_USER'])
		|| empty($_SERVER['PHP_AUTH_PW'])
		|| $_SERVER['PHP_AUTH_USER'] != "$user"
		|| $_SERVER['PHP_AUTH_PW'] != "$pw"
	) {
		header('WWW-Authenticate: Basic realm="x"');
		die(header('HTTP/1.0 401 Unauthorized'));
	}
}
CheckAuth("admin", "123456");
