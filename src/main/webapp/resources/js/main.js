$(document).ready(function(){
	var htm = $("#json_html");
	var raw = $("#json_raw");
	var rest = $("#rest_api");
	$("#add_node_popup").hide();
	
	$("#add_new_node").button().click(function(){
		$("#add_node_popup").dialog();		
	});
	
	$("#add_node_form").submit(function(event){
		rest.html("http://localhost:8080/UIS_Spring/tag/addNode");
		raw.html("");
		htm.html("");
		event.preventDefault();
		var data = $(this).serialize();

		var jqXhr = $.ajax({
			type: "POST",
			dataType: "json",
			url: "tag/addNode",
			data: data			
		}).always(function(res){
			console.log(jqXhr.responseText);
			console.log(res.length);
			console.log("============");
			
			
			if(res[0].key != "Success") {
				console.log("IT FAILED");
			} else {
				console.log("SUCCESS");
			}
			
	
			console.log("===========");
			
		    raw.html(jqXhr.responseText);
		    var items = [];
			items.push('<tr><td colspan="2" rowspan="1" width="100%" class="small_header"> Result' +  '</td></tr>');		    	
		    $.each(res, function(key,value){
		    	$("#mytable > tbody").append("<tr>");
		    	$.each(value, function(k,v){
		    		console.log(v);
		    		$("#mytable > tbody").append("<td>"+v+"</td>");
		    		items.push('<td>'  + v + '</td>');
		    	});
		    	$("#mytable > tbody").append("</tr>");
				items.push('</tr>');
		    });
			$('<table/>', {
				'class': 'result_table',
				html: items.join('')
				}).appendTo(htm);	
			$('#myModal').modal('toggle')
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


