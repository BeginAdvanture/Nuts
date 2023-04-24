
function go_fbw()
{
var theForm = document.frm
theForm.action = "NutsServlet?command=board_write";
theForm.submit();
}

function go_fbw1() //업데이트 수정
{
var theForm = document.frm
theForm.action = "NutsServlet?command=board_update";
theForm.submit();
}

function go_fbw2() //답변글
{
var theForm = document.frm
theForm.action = "NutsServlet?command=board_reply";
theForm.submit();
}




function boardCheck() {
	if (document.frm.name.value.length == 0) {
		alert("작성자를 입력하세요.");
		return false;
	}
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if (document.frm.title.value.length == 0) {
		alert("제목을 입력하세요.");
		return false;
	}
	return true;
}



function open_win(url, name) {
	window.open(url, name, "width=500, height=230");
}








function passCheck() {
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	return true;
}

/*

function go_reply() {
  var theForm = document.frm;
  theForm.action = "BoardServlet?command=board_reply"; // 답글 쓰기 액션으로 변경
  theForm.submit();
}

*/
