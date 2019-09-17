$(document).ready(() => {
	a = window.location.hash;
	a = a.replace('#url=', '');
	if($('#input').val() == ''){
		$('#input').val(a);
		$('#submit').click();	
	}
});
