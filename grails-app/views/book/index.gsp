
<%@ page import="angrails.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-book" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div ng-controller="BookListCtrl">
				<table class="table table-hover table-striped">
					<thead>
						<tr>
						
							<g:sortableColumn property="title" title="${message(code: 'book.title.label', default: 'Title')}" />
						
							<g:sortableColumn property="author" title="${message(code: 'book.author.label', default: 'Author')}" />
						
							<g:sortableColumn property="price" title="${message(code: 'book.price.label', default: 'Price')}" />
						
						</tr>
					</thead>
					<tbody>
					
						<tr ng-repeat="book in books">
						
							<td><g:link action="show" id="{{book.id}}">{{book.title}}</g:link></td>
						
							<td>{{book.author}}</td>
						
							<td>{{book.price}}</td>

						</tr>
					
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${bookInstanceCount ?: 0}" />
				</div>
			</div>
		</div>
	</body>
</html>
