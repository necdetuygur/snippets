<?php
$response = file_get_contents("http://google.com");

preg_match_all('|<ol(.*?)>(.*?)</ol>|is', $response, $menu);
$menu = $menu[2][0];

preg_match_all('|<li(.*?)><a(.*?)><span(.*?)></span><span(.*?)>(.*?)</span></a></li>|is', $response, $menu);

$menu = $menu[5];

foreach ($menu as $key => $value) {
	$menu[$key] = strip_tags($value);
}

echo "<pre><br>\$menu: ";
print_r($menu);
echo "<br></pre>";
exit;
