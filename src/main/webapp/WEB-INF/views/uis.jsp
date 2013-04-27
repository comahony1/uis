<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
	<title>home</title>
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css">   
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/main.js"></script>
	
	    <div class="hero-unit">
    <h1>Usability</h1>
    <p>A Usability POC</p>
    <p>
    <a href="#myModal" role="button" class="btn" data-toggle="modal">Add Node</a>
    </p>
    </div>
    
	<div class="container-fluid">
    	<div class="row-fluid">
    		<div class="span2">
    			<div class="btn-group btn-group-vertical">
    				<button type="button" class="btn" id="show_tags">Show Tags</button>
    				<button class="btn" id="show_dublin">Show Dublin Nodes</button>
    				<button class="btn" id="show_reston">Show Reston Nodes</button>
    				<button class="btn" id="show_seattle">Show Seattle Nodes</button>				
    			</div>	
    		</div>
    		<div class="span10">
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
					
					    <table id = "mytable" class="table table-striped">
					    	<thead>
                				<tr>
                  					<th>Location</th>
									<th>Name</th>
									<th>IP</th>
									<th>Domain</th>
              					</tr>
              				</thead>
              				<tbody></tbody>
    					</table>
				</div>	
    		</div>
    	</div>
    </div>
    

	
		
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">Modal header</h3>
		</div>
		<div class="modal-body">
		 
		 
		 <form class="form-horizontal" id="add_node_form">
    		
    		
    		<div class="control-group">
    			<label class="control-label" for="tag_name">Location</label>
    			<div class="controls">
    				<select name ="tag_name" placeholder="Location">
						<option>Dublin</option>
						<option>Reston</option>
						<option>Seattle</option>	
					</select>
    			</div>
   			</div>
    
  			<div class="control-group">
    			<label class="control-label" for="node_name">Name</label>
    			<div class="controls">
    				<input type="text" name="node_name" placeholder="Name">
    			</div>
    		</div>
    
    		<div class="control-group">
    			<label class="control-label" for="ip">IP</label>
    			<div class="controls">
    				<input type="text" name="ip" placeholder="ip">
    			</div>
    		</div>
    
    		<div class="control-group">
    			<label class="control-label" for="domain">Domain</label>
    			<div class="controls">
    				<input type="text" name="domain" placeholder="Domain">
    			</div>
    		</div>
    		
    		<div class="control-group">
    			<div class="controls">
    				<button type="submit" class="btn btn-primary" >Add</button>
    			</div>
    		</div>
    		</form>	
				
		</div>		
	</div>

	
	<br>
	
	
	
	
	
			
</body>
</html>