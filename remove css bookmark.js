javascript: { var xhttp = new XMLHttpRequest(); xhttp.onreadystatechange = function() { if (this.readyState == 4 && this.status == 200) { eval(xhttp.responseText); setTimeout(()=>{ $('link').remove(); $('*').removeAttr('style'); },1000); } }; xhttp.open("GET", "https://code.jquery.com/jquery-3.4.1.min.js", true); xhttp.send(); }