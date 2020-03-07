<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/nav.jsp"%>
<!-- PAGE-WRAPPER -->
<div class="page-wrapper">
	<section>
		<div class="col-md-6 nopadding">
			<!-- form -->
			<form action="/pension/user?cmd=joinProc" id="join" class="booking-form"
				style="height: 850px; padding-top: 250px;" name="form1"
				method="post">
				<h2 class="text-center">join</h2>
				<div id="form-content">
					<div class="group">
						<label for="userName">UserName</label>
						<div>
							<input id="userName" name="userName" class="form-control"
								type="text" placeholder="userName">
						</div>
					</div>
					<div class="group">
						<label for="password">Password</label>
						<div>
							<input id="password" name="password" class="form-control"
								type="password" placeholder="password">
						</div>
					</div>
					<div class="group">
						<label for="email">Email</label>
						<div>
							<input id="email" name="email" class="form-control" type="email"
								placeholder="Email">
						</div>
					</div>
					<div class="group">
						<label for="phone">Phone</label>
						<div>
							<input id="phone" name="phone" class="form-control" type="text"
								placeholder="Phone">
						</div>
					</div>
					<div class="group">
						<label for="address">Address</label>
						<div>
							<input type="text" class="form-control" id="address"
								name="address" required="required" readonly="readonly"
								style="width: 495px; float: left;" />
							<button onClick="goPopup()" type="button" class="btn btn-info ">주소찾기</button>
							<input type="hidden" name="status" value="true" />
						</div>
					</div>

					<div class="group submit">
						<label class="empty"></label>
						<div>
							<input name="submit" type="submit" class="btn btn-primary"
								value="Submit" />
						</div>
					</div>
				</div>
			</form>
			<!-- form -->
		</div>

	</section>
	<script src="/pension/js/join.js"></script>

	<!-- end: PAGE-WRAPPER -->
	<%@ include file="../include/footer.jsp"%>