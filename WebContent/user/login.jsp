<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/nav.jsp"%>
<!-- PAGE-WRAPPER -->
<div class="page-wrapper">
	<section>
	<div class="col-md-6 nopadding">
		<!-- form -->
		<form action="/pension/user?cmd=loginProc" id="login" class="booking-form " style="height:850px; padding-top: 250px;"  name="" method="post" >
			<h2 class="text-center">
			login </h2>
			<div id="form-content">
				<div class="group">
					<label for="userName">UserName</label>
					<div>
						<input id="userName" name="userName" class="form-control" type="text" placeholder="userName">
					</div>
				</div>
				<div class="group">
					<label for="password">Password</label>
					<div>
						<input id="password" name="password" class="form-control" type="password" placeholder="password">
					</div>
				</div>
					<div class="group">
						<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label> <input type="checkbox"> Remember me
								</label>
							</div>
						</div>
					</div>
				<div class="group submit">
					<label class="empty"></label>
					<div>
						<input name="submit" type="submit" class="btn btn-primary" value="Submit"/>
					</div>
				</div>
			</div>
		
		</form>
		<!-- form -->
	</div>

	</section>

<!-- end: PAGE-WRAPPER -->
<%@ include file="../include/footer.jsp"%>