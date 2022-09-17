
function openCity(cityName, elmnt, color) {
	var i, tabcontent, tablinks;
	// 기본 display 설정 none으로 set
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	// 링크 클릭 색상ㄷ 초기화
	tablinks = document.getElementsByClassName("tablink");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].style.backgroundColor = "";
	}
	// 클릭시 display: block으로 바꿔서 보여주기
	document.getElementById(cityName).style.display = "block";
	elmnt.style.backgroundColor = color;
}
document.getElementById("defaultOpen").click();

function openContents() {
	let tabcontent;
	let navigateContents = ['page/comview.html',
		'http://localhost:8080/step07_fullStack/page/com?command=all',
		'http://localhost:8080/step07_fullStack/page/com?command=all',
		'http://localhost:8080/step07_fullStack/page/com?command=all'];


	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		if (tabcontent[i].style.display == "block") {
			window.location.href = navigateContents[i];
		}
	}
}
document.getElementByClassName("golink").click();