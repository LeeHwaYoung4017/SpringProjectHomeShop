function plzLoginChk() {
	alert("중복 체크 해주세요.");
}

//아이디 중복 창을 새로 띄운다.
function idCheck() {
	//jsp파일 또는 html파일 이름
	var url = "./idCheck";
	//사용할 제목
	var title = "idCheck";
	//사이즈 및 옵션
	var option = "top=200, left=300, width=500px, height=500px, scrollbar=no, resizable=no";
	//창을 띄운다.
	window.open(url,title,option);
}

//전체선택
function allCheckedBox(obj) {
    //선택한 체크박스의 클래스 명칭을 가져온다. (chks를 불러옴)
    const termClass = obj.getAttribute("class");
    //선택한 클래스명과 같은 클래스의 갯수 ( 체크박스의 개수 (전체선택 포함))
    console.log(document.getElementsByClassName(termClass).length);
    Array.prototype.forEach.call(document.getElementsByClassName(termClass), function(element, index, array) {
        //엘리먼트의 값 출력 (체크박스의 value값)
        console.log(element.value);
        //선택한 클래스의 첫번째 checkbox의 상태가 체크가 되있는 경우
        if(document.getElementsByClassName(termClass)[0].checked == true) {
            //같은 클래스명을 가진 모든 checkbox의 상태를 선택 완료 처리 한다.
            element.checked = true;
        }
        //선택한 클래스의 첫번째 checkbox의 상태가 체크가 해제된 경우
        else {
            //같은 클래스명을 가진 모든 checkbox의 상태를 선택 해제 처리 한다.
            element.checked = false;
        }
    });
}

//개별 선택이 이루어진 경우에 전체값 체크의 예외처리
function eachCheckedBox(obj) {
    //선택한 체크박스의 상태가 선택해제인 경우
    if(obj.checked == false) {
        //선택한 체크박스의 클래스 명칭을 가져온다.
        const termClass = obj.getAttribute("class");
        //첫번째 checkbox의 상태가 체크가 되어있는경우
        if(document.getElementsByClassName(termClass)[0].checked == true) {
            //첫번째 checkbox의 상태를 체크해제한다.
            document.getElementsByClassName(termClass)[0].checked = false;
        }
    }
}

//휴대폰 번호 자리를 채우면 다음 텍스트로 넘겨줌
function moveNext(obj, len, nextObj) {
	if(obj.value.length == len){	
		nextObj.focus();
	}
	return true;
}

//정규식
function barricade() {
	var pw = document.getElementById("password").value;
	var chkpw = document.getElementById("repassword").value;
	var email = document.getElementById("email").value;
	var name = document.getElementById("name").value;
	
	//이름 빈칸인지 확인
    if(name=="") {
        alert("이름을 입력해 주세요");
        return false;
    }
    
	//아이디 정규식은 idCheck.jsp 에서 실행
	
	//비밀번호 정규식
    var pwPattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
    if(!pwPattern.test(pw)) {
    	alert("패스워드는 9~16자의 대문자,소문자,숫자,특수문자 혼합이여야 합니다.");
        return false;
    }
	//비밀번호와 비밀번호 확인이 일치한지 확인
    if(pw!=chkpw) {
        alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
        return false;
    }

	//이메일 정규식
    var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    if(!emailPattern.test(email)) {
    	alert("적합하지 않은 이메일 형식입니다.");
        return false;
    }
	//이메일이 빈칸인지 확인
    if(email=="") {
        alert("이메일을 입력해 주세요");
        return false;
    }
	
    var checkOn = document.getElementsByName('marking');
    var chk = false;
    
    for(var i=0 ; i<checkOn.length ; i++) {
    	if(checkOn[i].checked) {
    		chk = true; 
    	} else {
    		chk = false; 
    	} 
    } 
    if(chk) {
	    alert("회원가입 완료");
    } else {
    	alert("약관에 동의해 주세요.") 
    	return false; 
    }
}


