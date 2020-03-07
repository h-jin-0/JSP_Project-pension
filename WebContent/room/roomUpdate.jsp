<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/nav.jsp"%>
<!-- PAGE-WRAPPER -->
<div class="page-wrapper">
	<section>
	<div class="col-md-6 nopadding">
		<!-- form -->
		<form id="join" class="booking-form" style="height:850px; padding-top: 250px;"  name="form1" method="post" action="#">
			<h2 class="text-center">
			Room Update </h2>
			
			<div id="form-content">
			
				<div class="group">
					<label for="roomName">Room Name</label>
					<div>
						<input id="roomName" name="roomName" class="form-control" type="text" placeholder="roomName">
					</div>
				</div>
				<div class="group">
					<label for="price">Price</label>
					<div>
						<input id="price" name="price" class="form-control" type="text" placeholder="price">
					</div>
				</div>
				<div class="group">
					<label for="photo">Phote</label>
					<div>
						<input id="photo" name="photo" class="form-control" type="photo" readonly="readonly" style="width:475px; float: left;"/>
						<button onClick="" type="button" class="btn btn-info ">사진 업로드</button>
					</div>
				</div>
				<div class="group">
					<label for="title">Title</label>
					<div>
						<input id="title" name="title" class="form-control" type="text" placeholder="title">
					</div>
				</div>
				<div class="group">
					<label for="content">Content</label>
					<div >		
					<input type="text" class="form-control" id="content" name="content" required="required"  placeholder="title" />
				
				</div>
				</div>
			
				<div class="group submit">
					<label class="empty"></label>
					<div>
						<input name="submit" type="submit" class="btn btn-primary" value="Submit"/>
					</div>
				</div>
			</div>
			<div id="form-loading" class="hide">
				<i class="fa fa-circle-o-notch fa-spin"></i>
			</div>
		</form>
		<!-- form -->
	</div>

	</section>

<!-- end: PAGE-WRAPPER -->
<%@ include file="../include/footer.jsp"%>