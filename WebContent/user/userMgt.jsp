<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/nav.jsp"%>
<!-- PAGE-WRAPPER -->
<div class="page-wrapper">
	<section>
		<div class="container" style="margin-top: 100px; margin-bottom: 100px;">
			<h2>User Management</h2>

			<table class="table ">
                <thead class="bg-warning">
                    <tr>
                        <th>회원번호</th>
                        <th>이름</th>
                        <th>이메일</th>
                        <th>전화번호</th>
                        <th>주소</th>
                        <th>회원 관리</th>
                    </tr>
                </thead>
                <tbody>
                
                <c:forEach var="user" items="${users}" varStatus="status">
                <c:if test="${user.status eq 'true'}">
                  <tr id="user_${status.index}" >
                  		<td>${user.id}<input type="hidden" id="userid" value="${user.id}" /></td>
                        <td>${user.userName}</td>
                        <td>${user.email}</td>
                        <td>${user.phone}</td>
                        <td>${user.address}</td>
                        <td><button id="btnStatus" onclick="setFalse()" class="bg-danger" value="${user.status}">탈퇴</button></td>
                       
                    </tr>
                </c:if>
                </c:forEach>
                  
                </tbody>
              </table>

		</div>
	</section>
<script>

function setFalse() {
	var id=$('#id').val();

	var status = {
			id:id
	}

	$.ajax({
		type : "POST",
		url : "/pension/user?cmd=setStatus",
		dataType : "text",
		contentType : "application/json",
		data : JSON.stringify(status),
		success : function(data) {
			console.log(data);
			if (data === "ok") {
				alert("회원 강제 탈퇴 성공");
				if(${user.id} == id){
				  $('#id').parent().parent().remove();}
			} else {
				alert("회원 강제 탈퇴 실패");
			}
		},
		error : function(data) {
			alert("통신 실패");
		}
	});
	
}
	
</script>
	<!-- end: PAGE-WRAPPER -->
	<%@ include file="../include/footer.jsp"%>