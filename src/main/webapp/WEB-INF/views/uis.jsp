<!DOCTYPE html>
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
    		<a href="#myModal" role="button" class="btn" data-toggle="modal" id = "add_new_node">Add Node</a>
    	</p>
    	<p>
    		<a href="#wizardModal" role="button" class="btn" data-toggle="modal" id = "add_cte_node">Add CTE</a>
    	</p>
    </div>
    
    <div class="alert alert-error" id="nodeError"  style="display:none">
    	<button class="close" onclick="$('#nodeError').hide();; return false;">�</button>
     	<h4>Error!</h4> Failed to add node
      	<div id="nodeErrorMsg"></div>
    </div>
    
    <div class="alert alert-success" id="nodeSuccess" style="display:none">
    	<button class="close" onclick="$('#nodeSuccess').hide();; return false;">�</button>
    	<strong>Well done!</strong> You successfully added the node.
    </div>
    
	<div class="container-fluid">
    	<div class="row-fluid">
    		
    			
				<div>
					<div id="json_html"></div>
					<table id = "mytable" class="table table-striped">
						<thead>
                			<tr>
                  				<th>Domain</th>
								<th>Location</th>
								<th>Name</th>
								<th>IP</th>
              				</tr>
              			</thead>
              			<tbody></tbody>
    					</table>
    		</div>
    	</div>
    </div>
    

	
		
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
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

	
	
	
	
	<div id="wizardModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
			<h3>Modal header</h3>
		</div>
		<div class="modal-body">
		 <div class="row show-grid">
              <div class="span1">1</div>
              <div class="span1">1</div>

              <div class="span1">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>
              <div class="span1">1</div>

              <div class="span1">1</div>
            </div>
		 
		 
		 <form class="form-horizontal" id="add_node_wizard">
    		
    		
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
	
	
	
	
	
			
</body>
</html>