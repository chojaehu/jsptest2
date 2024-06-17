<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원 가입 폼</title>
  <!-- 부트스트랩 CSS 링크 -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
  <div class="container">
    <h2 class="mt-5 mb-4">코드그룹 수정</h2>
    <form id='forminsert' name ='forminsert' method='get' >
    <input type="hidden" id="cdgSeq" name="cdgSeq" value="${item.cdgSeq}">
      <div class="form-group row">
        <label for="inputName" class="col-sm-2 col-form-label">코드그룹 이름</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="cdgName" name="cdgName" value="${item.cdgName} ">
        </div>
      </div>

      <div class="form-group row">
        <div class="col-sm-10 offset-sm-2">
          <button type="button" class="btn btn-primary" id="btndeleupdt">삭제</button>
          <button type="button" class="btn btn-primary" id="btnupdt">수정</button>
        </div>
      </div>
    </form>
  </div>

  <!-- 부트스트랩 JS 및 옵션적인 jQuery 포함 (선택사항) -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-+LAVV6CG24N39bEiJkn3Ee9/4weIkS7MKvPT/ZJpCm0lA7ZpEF1Hl+2hPOhZ2gj7" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+6nc1JZB38/z3zoV1G30W1I6hF5dJoiJW56" crossorigin="anonymous"></script>
 <script type="text/javascript">
	 let goupdate= "/update"
	 let goupdatedele ="/updatedele"
	 document.getElementById("btnupdt").onclick = function(){
		 let form = document.querySelector("form[name=forminsert]")
		 form.action = goupdate;
		 form.submit();
	 }
	 document.getElementById("btndeleupdt").onclick = function(){
		 let form = document.querySelector("form[name=forminsert]")
		 form.action = goupdatedele;
		 form.submit();
	 }
  </script>

</body>
</html>
