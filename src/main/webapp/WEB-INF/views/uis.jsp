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
    		<a role="button" class="btn" data-toggle="modal" id = "add_cte_node">Add CTE</a>
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
    		
    		
    		<div class="control-group error" id = "tag_name">
    			<label class="control-label" for="tag_name">Location</label>
    			<div class="controls">
    				<select name ="tag_name" placeholder="Location">
						<option>Dublin</option>
						<option>Reston</option>
						<option>Seattle</option>	
					</select>
					<span class="help-inline" id="tag_name_help"></span>
    			</div>
   			</div>
    
  			<div class="control-group" id = "node_name">
    			<label class="control-label" for="node_name">Name</label>
    			<div class="controls">
    				<input type="text" name="node_name" placeholder="Name">
    				<span class="help-inline" id="node_name_help"></span>
    			</div>
    			
    		</div>
    
    		<div class="control-group" id = "ip">
    			<label class="control-label" for="ip">IP</label>
    			<div class="controls">
    				<input type="text" name="ip" placeholder="ip">
    				<span class="help-inline" id="ip_help"></span>
    			</div>    			
    		</div>
    
    		<div class="control-group" id = "domain">
    			<label class="control-label" for="domain">Domain</label>
    			<div class="controls">
    				<input type="text" name="domain" placeholder="Domain">
    				<span class="help-inline" id="domain_help"></span>
    			</div>    			
    		</div>
    		
    		<div class="control-group">
    			<div class="controls">
    				<button type="submit" class="btn btn-primary" >Add</button>
    				<span class="help-inline"></span>
    			</div> 			
    		</div>
    		</form>					
		</div>		
	</div>

	
	
	
	
	<div id="wizardModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
			    <h3 id="WizardTitle"></h3>
		</div>
		<div class="modal-body">
	
			 
		 <form class="form-horizontal" id="add_node_wizard">
    		
    		
    		<div id="p1">
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
    					<input type="text" name="node_name" placeholder="Name" required>
    				</div>
    			</div>
    
    			<div class="control-group">
    				<label class="control-label" for="ip">IP</label>
    				<div class="controls">
    					<input type="text" name="ip" placeholder="ip" required>
    				</div>
    			</div>
    
    			<div class="control-group">
    				<label class="control-label" for="domain">Domain</label>
    				<div class="controls">
    					<input type="text" name="domain" placeholder="Domain" required>
    				</div>
    			</div>
    		</div>
    		
 
 
     		<div id="p2">
    			<div class="control-group">
    				<label class="control-label" for="cte_name">Name</label>
    				<div class="controls">
    					<input type="text" name="cte_name" placeholder="CTE Name" required>
    				</div>
   				</div>
    
  				<div class="control-group">
    				<label class="control-label" for="cte_ip">IP Address</label>
    				<div class="controls">
    					<input type="text" name="cte_ip" placeholder="IP" required>
    				</div>
    			</div>
    
    			<div class="control-group">
    				<label class="control-label" for="cte_group">Group</label>
    				<div class="controls">
    					<input type="text" name="cte_group" placeholder="Group" required>
    				</div>
    			</div>
    		</div>
 
    		
    		<div id="p3">
    			<div class="control-group">
    				<label class="control-label" for="pcf_plugin">PCF Plugin</label>
    				<div class="controls">
    					<select name ="pcf_plugin" placeholder="Select plugin">
							<option>PCF1</option>
							<option>PCF2</option>
							<option>PCF3</option>	
						</select>
    				</div>
   				</div>
    
  				<div class="control-group">
    				<label class="control-label" for="pcf_type">PCF Type</label>
    				<div class="controls">
    					<input type="text" name="pcf_type" placeholder="PCF Type" required>
    				</div>
    			</div>
    		</div>
    		
    		<div class="control-group">
    			<div class="controls">
    				<button type="button" class="btn" id="wizardNext">Next</button>
    				<button type="submit" class="btn btn-primary" id="wizardSubmit">Add</button>
    			</div>
    		</div>
    		</form>	
				
		</div>		
	</div>
	
	
	
	
	
			
</body>
</html>
