/**
 * 连接ajax XMLHttpRequest
 */
function getXMLHttpRequest() {
	var xmlhttp;
	if(window.XMLHttpRequest){
		xmlhttp = new XMLHttpRequest();
	}else{
		xmlhttp = new ActiveXObject("Microsoft.XMLHttp");
	}
	return xmlhttp;
}