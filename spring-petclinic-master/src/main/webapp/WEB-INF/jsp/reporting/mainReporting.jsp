<%@ page session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags"%>

<petclinic:layout pageName="reports">
	<h2>Bank Reports</h2>
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="active"><a data-toggle="tab" href="#home">Home</a></li>
			<li><a data-toggle="tab" href="#menu1">Tax Outsourcing</a></li>
			<li><a data-toggle="tab" href="#menu2">IPRE</a></li>
			<li><a data-toggle="tab" href="#menu3">TAPI Interface</a></li>
		</ul>

		<div class="tab-content">
			<div id="home" class="tab-pane fade in active">
				<h3>HOME</h3>
				<p>Bank Reporting tool</p>
			</div>
			<div id="menu1" class="tab-pane fade">
				<h3>Tax Outsourcing</h3>
				<datatables:table id="vets" data="${vets.vetList}" row="vet"
					cssClass="table table-striped" pageable="false" info="false">
					<datatables:column title="Name">
						<c:out value="${vet.firstName} ${vet.lastName}" />
					</datatables:column>
					<datatables:column title="Specialties">
						<c:forEach var="specialty" items="${vet.specialties}">
							<c:out value="${specialty.name}" />
						</c:forEach>
						<c:if test="${vet.nrOfSpecialties == 0}">none</c:if>
					</datatables:column>
				</datatables:table>
			</div>
			<div id="menu2" class="tab-pane fade">
				<h3>IPRE</h3>
				<datatables:table id="vets" data="${vets.vetList}" row="vet"
					cssClass="table table-striped" pageable="false" info="false">
					<datatables:column title="Name">
						<c:out value="${vet.firstName} ${vet.lastName}" />
					</datatables:column>
					<datatables:column title="Specialties">
						<c:forEach var="specialty" items="${vet.specialties}">
							<c:out value="${specialty.name}" />
						</c:forEach>
						<c:if test="${vet.nrOfSpecialties == 0}">none</c:if>
					</datatables:column>
				</datatables:table>
			</div>
			<div id="menu3" class="tab-pane fade">
			<h3>TAPI Interface</h3>
				<div class="dropdown">
					<button class="btn btn-primary dropdown-toggle" type="button"
						data-toggle="dropdown">
						Transaction File Types <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#">Trading</a></li>
						<li><a href="#">Swaping</a></li>
					</ul>
					<div class="container">
						<div></div>
					</div>
					
				</div>
				
			</div>
		</div>
	</div>

</petclinic:layout>
