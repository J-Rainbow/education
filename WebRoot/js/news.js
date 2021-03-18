window.onload = function(){
	$('my_on').onclick = function(){
		$('my_info_two').style.display = 'none';
		$('my_info').style.display = 'block';
	}
	$('my_on_two').onclick = function(){
		$('my_info_two').style.display = 'block';
		$('my_info').style.display = 'none';
	}
	
	function $(id) {
		return typeof id === "string" ? document.getElementById(id) : null;
	}
}