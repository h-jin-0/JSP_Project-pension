<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/nav.jsp"%>
<!-- PAGE-WRAPPER -->
<div class="page-wrapper">
	<section>
	<div class="col-md-6 nopadding">
		<!-- form -->
		<form id="booking-form" class="booking-form" name="form1" method="post" action="#">
			<h2 class="text-center">
			Book a Reservation </h2>
			<div id="form-message" class="message hide">
				 Thank you for your enquiry!
			</div>
			<div id="form-content">
				<div class="group">
					<label for="date-from">From</label>
					<div class="addon-right">
						<input id="date-from" name="date-from" class="form-control" type="text">
						<i class="fa fa-calendar"></i>
					</div>
				</div>
				<div class="group">
					<label for="date-to">To</label>
					<div class="addon-right">
						<input id="date-to" name="date-to" class="form-control" type="text">
						<i class="fa fa-calendar"></i>
					</div>
				</div>
				<div class="group">
					<label for="room-type">Available rooms</label>
					<div>
						<select id="room-type" name="room-type" class="form-control">
							<option value="indigo">INDIGO VILOT</option>
							<option value="will">WILL BARROW</option>
							<option value="lance">LANCE BOGROL</option>
							<option value="room+ evelyin">ROOM EVELYIN</option>
						</select>
					</div>
				</div>
				
				<div class="group">
					<label for="adults">Adults</label>
					<div>
						<select id="adults" name="adults" class="form-control">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select>
					</div>
				</div>
				<div class="group">
					<label for="children">Children</label>
					<div>
						<select id="children" name="children" class="form-control">
							<option value="-">-</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</div>
				</div>
				<div class="group">
					<label for="name">Name</label>
					<div>
						<input id="name" name="name" class="form-control" type="text" placeholder="Name">
					</div>
				</div>
				<div class="group">
					<label for="email">Email</label>
					<div>
						<input id="email" name="email" class="form-control" type="email" placeholder="Email">
					</div>
				</div>
				<div class="group">
					<label for="phone">Phone</label>
					<div>
						<input id="phone" name="phone" class="form-control" type="text" placeholder="Phone">
					</div>
				</div>
				<div class="group">
					<label for="special-requirements">Special requirements</label>
					<div>
						<textarea id="special-requirements" name="special-requirements" class="form-control" rows="5" placeholder="Special requirements"></textarea>
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
	<div class="col-md-6 nopadding">
		<div class="map">
  	<div id="map-container"></div>
		</div>
		<div class="insidecolumn">
			<div class="contactinfo">
				<div class="theicon">
					<i class="fa fa-map-marker"></i>
				</div>
				<div class="theinfo">
					<h3>Address</h3>
					<p>
					940 NORTH GEORGIA, BLUE RIDGE<br/>MOUNTAIN RESORTS CABIN
					</p>
				</div>

				<div class="theicon">
					<i class="fa fa-phone"></i>
				</div>
				<div class="theinfo">
					<h3>Phone</h3>
					<p>
					+9-684-591-713 <br>
					 +1-305-449-0888
					</p>
				</div>

				<div class="theicon">
					<i class="fa fa-envelope"></i>
				</div>
				<div class="theinfo">
					<h3>E-mail</h3>
					<p>
					<a href="mailto:donotsend@gmail.com">office@pension.com</a><br/>
					<a href="#">www.pension.com</a>
					</p>
				</div>
			</div>
		</div>
</div>	
	</section>

<!-- end: PAGE-WRAPPER -->
<%@ include file="../include/footer.jsp"%>