window.onload= function(){
	/*var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth()+1;
	var day = date.getDate();
	console.log(year+"-"+month+"-"+day);*/
	var time = document.getElementById('news_time');
	console.log(time);
	var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth()+1;
	var day = date.getDate();
	var timer = setInterval(function(){
		var date = new Date();
		var year = date.getFullYear();
		var month = date.getMonth()+1;
		var day = date.getDate();
		time.innerText = year+"-"+month+"-"+day;
	},10)
}
