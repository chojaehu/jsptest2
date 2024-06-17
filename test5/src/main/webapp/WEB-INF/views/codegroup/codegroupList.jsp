<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>boardList</title>
</head>
<body>

<div class="page-wrapper">
    <div class="container-fluid">
        <div class="col-lg-8">
        
            <div class="col-lg-12">
                <h1 class="page-header">코드그룹 리스트</h1>
            </div>
            <div class="row">
                  <div class="col-lg-12">
                      <button type="button" class="btn btn-outline btn-primary pull-right" id=btn>
                          <i class="fa fa-edit fa-fw"></i> 등록
                      </button>
                  </div>
              </div>
            <div class="panel panel-default">
                <div class="panel-heading">등록</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>코드그룹 이름</th>
                                <th>삭제여부</th>
                                <th>등록일</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%-- <c:url value="/codegroupform">
								     <c:param name="cdgSeq" value="${item.cdgSeq}" />
								</c:url> --%>
                       <c:forEach items="${list}" var="item">
                            <tr>
                                <td>${item.cdgSeq}</td>
                                <td>
                                <a href="/codegroupform?cdgSeq=${item.cdgSeq}">
                                ${item.cdgName}</a>
                                </td>
                                <td>${item.cdgDelNy}</td>
                                <td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${item.cdgRegDt}"/></td>
                            </tr>
                        </c:forEach> 
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

 <script type="text/javascript">
 document.getElementById("btn").onclick = function(){
	 window.location.href = '/codegroupInst';
 }
  </script>
</body>

</html>
