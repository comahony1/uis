$(document).ready(function(){
	var htm = $("#json_html");
	var nodeErrorMsg = $("#nodeErrorMsg");
	var raw = $("#json_raw");
	var rest = $("#rest_api");
	
	$("#add_new_node").click(function(){
		$('#add_node_form')[0].reset();
	});
	
	$("#add_node_form").submit(function(event){
		rest.html("http://localhost:8080/UIS_Spring/tag/addNode");
		raw.html("");
		htm.html("");
		event.preventDefault();
		var data = $(this).serialize();

		$.ajax({
			type: "POST",
			dataType: "json",
			url: "tag/addNode",
			data: data			
		}).always(function(res){
			
			
			if(res[0].key != "Success") {
					
				 $("#nodeSuccess").hide();
				 $("#nodeError").show();
				 nodeErrorMsg.empty();
				 var items = [];
				 items.push("<ul>");
				 $.each(res, function(index,element) {
					 items.push("<li>"+ element.key + " = " + element.val+ "</li>");
					 console.log(element.key);
					 console.log(element.val);
				 });
				 items.push("</ul>");
				 nodeErrorMsg.append(items.join(''));
				 
			} else {
				 $("#nodeError").hide();
				 $("#nodeSuccess").show();
				
				
				var jqXhr1 = $.getJSON( "nodes/tagName=Dublin",function(data){
					 console.log("GOT THE FOLLOWING DATA BACK "+jqXhr1.responseText);
			    	 $.each(data, function(index, element) {
			    	
			    		 $("#mytable > tbody").append("<tr>");
			    		 $.each(element, function(k,v){
			    			 $("#mytable > tbody").append("<td>"+v+"</td>");
			    			 
			    		 });
			    		 $("#mytable > tbody").append("</tr>");
					});		    
			    });				
			}
		    
		    var items = [];
		    $.each(res, function(key,value){
		    	
		    });
			$('<table/>', {
				'class': 'result_table',
				html: items.join('')
				}).appendTo(htm);	
			$('#myModal').modal('toggle');
		});
	});
	
	$("#show_tags").button().click(function(){
	    var jqXhr = $.getJSON( "tag",function(data){
	    	console.log(data);
		    raw.html(jqXhr.responseText);
		    var items = [];
		    $.each(data, function(key,value){
				items.push('<li>' + value + '</li>');
		    });				
			$('<ul/>', {
				'class': 'node-item',
				html: items.join('')
				}).appendTo(htm);	

	    });
	});
	
	$("#show_dublin").button().click(function(){
		rest.html("http://localhost:8080/UIS_Spring/nodes/tagName=Dublin");
		raw.html("");
		htm.html("");
	    var jqXhr = $.getJSON( "nodes/tagName=Dublin",function(data){
	    	console.log("START="+data);
	    	 $.each(data, function(index, element) {
	    	console.log(element.node_name);
	    	 });
	    	
	    	console.log(jqXhr.responseText);
	    	console.log(data);
		    raw.html(jqXhr.responseText);
		    var items = [];
		    $.each(data, function(key,value){
				items.push('<li> Node' +  '<ul>');		    	
		    	$.each(value, function(k,v){
					items.push('<li>' + k + " = " + v + '</li>');
		    	});
				items.push('</ul></li>');
		    });
			$('<ul/>', {
				'class': 'node-item',
				html: items.join('')
				}).appendTo(htm);			    
	    });
	});
	$("#show_reston").button().click(function(){
		rest.html("http://localhost:8080/UIS_Spring/nodes/tagName=Reston");
		raw.html("");
		htm.html("");		
	    var jqXhr = $.getJSON( "nodes/tagName=Reston",function(data){
		    raw.html(jqXhr.responseText);
		    var items = [];
		    $.each(data, function(key,value){
				items.push('<li> Node ' +  '<ul>');		    	
		    	$.each(value, function(k,v){
					items.push('<li>' + k + " = " + v + '</li>');
		    	});
				items.push('</ul></li>');
		    });
		    
			$('<ul/>', {
				'class': 'node-item',
				html: items.join('')
				}).appendTo(htm);	

	    });
	});
	
	$("#show_seattle").button().click(function(){
		rest.html("http://localhost:8080/UIS_Spring/nodes/tagName=Seattle");
		raw.html("");
		htm.html("");		
	    var jqXhr = $.getJSON( "nodes/tagName=Seattle",function(data){
		    raw.html(jqXhr.responseText);
		    var items = [];
		    $.each(data, function(key,value){
				items.push('<li> Node ' +  '<ul>');		    	
		    	$.each(value, function(k,v){
					items.push('<li>' +  k + " = " + v + '</li>');
		    	});
				items.push('</ul></li>');
		    });				
		    
			$('<ul/>', {
				'class': 'node-item',
				html: items.join('')
				}).appendTo(htm);	

	    });
	});

});


