

	
	// text, textarea 입력값 체크
function isTextValidate(obj,kind,len,name)
{
	var str  = "";
	str = trimStr(obj.value);
	if (str == "" || str == " ")
	{
		alert(josa(name,"을를") + " 입력하세요.");
		obj.focus();
		return false;
	}

	if (kind == "number")
	{
        if (isNaN(str) || /^\s+$/.test(str))
        {
			alert(josa(name,"은는") + " 숫자만 입력하세요.");
			obj.focus();
			return false;
        }
	}
	else if (kind == "alpha")
	{
		if (!/^[a-z A-Z]+$/.test(str))
		{
			alert(josa(name,"은는") + " 알파벳만 입력하세요.");
			obj.focus();
			return false;
        }
	}
	else if (kind == "alphanum")
	{
		if (/\W/.test(str))
		{
			alert(josa(name,"은는") + " 알파벳과 숫자만 입력하세요.");
			obj.focus();
			return false;
        }
	}
	else if (kind == "notsc")
	{
		if (!/^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/.test(str))
		{
			alert(josa(name,"은는") + " 한글, 알파벳, 숫자만 입력하세요.");
			obj.focus();
			return false;
        }
	}	
	else if (kind == "radio")
	{
		var len = obj.length;
		var flag = false;
		for(var i=0; i<len; i++)
		{
			if (obj[i].checked == true)
			{
				flag = true;
			}
		}

		if (!flag)
		{
			alert(josa(name,"을를") + " 선택하세요.");
			return false;
		}
	}
	else if (kind == "image")
	{
		var tmp = str.split(".");
		var ext = tmp[tmp.length-1];
		ext = ext.toLowerCase();
		if (ext != "gif" && ext != "jpg" && ext != "jpeg" && ext != "png")
		{
			alert(josa(name,"은는") + " 이미지 파일[gif, jpg, jpeg, png]만 가능합니다.");
			return false;
		}
	}
	else if (kind == "movie")
	{
		var tmp = str.split(".");
		var ext = tmp[tmp.length-1];
		ext = ext.toLowerCase();
		if (ext != "avi" && ext != "wmv" && ext != "mp4")
		{
			alert(josa(name,"은는") + " 동영상 파일[avi, wmv, mp4]만 가능합니다.");
			return false;
		}
	}

	if (len > 0 && str.length < len)
	{
		alert(josa(name,"은는") + " "+len+"자 이상 입력하세요.");
		obj.focus();
		return false;
	}

	return true;
}
	
function joinConfirm(){
	
	if(document.reg_form.id.value == '') {
		alert("아이디는 필수 사항입니다");
		reg_form.id.focus(); //태그안에 마우스 포커스
		return; //메서드 강제 종료
	}
	
	if(document.reg_form.pw.value == '') {
		alert("비밀번호는 필수 사항입니다");
		reg_form.pw.focus();
		return;
	}
	
	if(document.reg_form.name.value == '') {
		alert("이름은 필수 사항입니다");
		reg_form.id.focus();
		return;
	}
	//id의 값의 길이
	if(document.reg_form.id.value.length < 4) {
		alert("아이디는 4글자 이상이어야 합니다");
		reg_form.id.focus();
		return;
	}
	
	//pw의 값의 길이
	if(document.reg_form.pw.value.length < 6) {
		alert("비밀번호는 6글자 이상이어야 합니다");
		reg_form.pw.focus();
		return;
	}
	
	if(document.reg_form.pw.value != document.reg_form.pw_check.value){
		alert("비밀번호가 틀렸습니다. 비밀번호 확인란을 확인하세요");
		reg_form.pw_check.focus();
		return;
	}
	
	if(document.reg_form.email.value.trim()!="" && document.reg_form.email.value.match(/^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/)!=document.reg_form.email.value.trim())
	{
		alert("메일주소형식이 맞지 않습니다.");
		reg_form.email.focus();
		return;
	}
	
	//confirm()메서드는 확인, 취소 여부를 물어보는 JS 메서드입니다.
	//확인버튼 클릭시 true, 취소 버튼 클릭시 false
	if(confirm("회원가입 하시겠습니까?")) {
		reg_form.submit(); //자바스크립트의 submit
	} else {
		return;
	}

}

function chagepw(){
	
	if(document.reg_form.old_pw.value == '') {
		alert("현재 비밀번호는 필수 사항입니다");
		reg_form.old_pw.focus(); //태그안에 마우스 포커스
		return; //메서드 강제 종료
	}
	
	if(document.reg_form.new_pw.value == '') {
		alert("변경 비밀번호는 필수 사항입니다");
		reg_form.new_pw.focus();
		return;
	}
	
	if(document.reg_form.new_pw2.value == '') {
		alert("변경 비밀번호 확인은 필수 사항입니다.");
		reg_form.new_pw2.focus();
		return;
	}
	
	//pw의 값의 길이
	if(document.reg_form.new_pw.value.length < 6) {
		alert("비밀번호는 6글자 이상이어야 합니다");
		reg_form.new_pw.focus();
		return;
	}
	
	if(document.reg_form.new_pw.value != document.reg_form.new_pw2.value){
		alert("비밀번호가 틀렸습니다. 비밀번호 확인란을 확인하세요");
		reg_form.new_pw2.focus();
		return;
	}
	
	
	if(confirm("비밀번호를 변경하시겠습니까?")) {
		reg_form.submit(); 
	} else {
		return;
	}

}