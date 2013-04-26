<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
	<title>home</title>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	<script src="resources/js/main.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
	<table id="skeleton">
			<thead>
			<tr class="header_panel">
				<td  >
					<table style="width:100%">
						<tr>
							<td style="text-align:right" >
							<div class="header_text">Demo Unified User Interface Strategy - Spring MVC</div>
							</td>
						</tr>
											
					
						
					</table>
				</td>				
			</tr>
			</thead>
		<tbody>			
		<tr>
			<td class="filler"></td>
		</tr>
			<tr>
				<td>
					<table id="body_panel">
						<tbody>
							<tr>
								<td id="left_menu_panel">
								<button id="show_tags">Show Tags</button>								
								<button id="show_dublin" >Show Dublin Nodes</button>
								<button id="show_reston">Show Reston Nodes</button>
								<button id="show_seattle" >Show Seattle Nodes</button>
								<button id="add_new_node">Add Node</button>								
								</td>
								<td id="main_body">
								<div>
									<h4 class="small_header">HTTP REST API</h4>
									<div id="rest_api"></div>
								</div>
								<div>
									<h4 class="small_header">RAW JSON Output</h4>
									<div id="json_raw"></div>
								</div>
								<div>
									<h4 class="small_header">HTML Formatted Output</h4>
									<div id="json_html"></div>
								</div>								
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	

	<div id="add_node_popup" title="Add a New Node">
		<form id="add_node_form">
			<table style="text-align: left">
			  <tbody>
			    <tr>
			      <td>Location</td>
			      <td>
				      <select id="tag_name_select" name="tag_name">
				      <option>Dublin</option>
				      <option>Reston</option>
				      <option>Seattle</option>
			      </select>
			      </td>
			    </tr>
			    <tr>
			      <td>Name</td>
			      <td><input id="node_name_box" type="text" name="node_name"></td>
			    </tr>
			    <tr>
			      <td>IP</td>
			      <td><input id="ip_box" type="text" name="ip" ></td>
			    </tr>
			    <tr>
			      <td>Domain</td>
			      <td><input id="domain_box" type="text" name="domain" ></td>
			    </tr>
			    <tr>
			      <td colspan="2" rowspan="1" style="text-align: right;">
			      <input id="add_node" type="submit" value="Add"></td>      
			    </tr>
			  </tbody>
			</table>	          
		</form>	
	</div>
	
	<br>
</body>
</html>