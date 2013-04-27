package com.openet.uis.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.openet.uis.model.NodeFactory;
import com.openet.uis.model.NodeObject;
import com.openet.uis.model.Status;

/*
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
*/

/**
 * Handles requests for the application home page.
 */
@Controller
public class UisController {
	
	private NodeFactory reston,seattle,dublin;
	public UisController ()
	{
		initItems();
	}
	
	/**
	 * private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	 * 
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getIndex(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "uis";
	}

	@RequestMapping(value = "/nodes/tagName={str}", method = RequestMethod.GET)	
	public @ResponseBody  List<NodeObject> getNodes(
			@PathVariable String str, HttpServletResponse response)
	{
		if(str.equals(dublin.getTag()))
			return dublin.getNodes();
		else if(str.equals(reston.getTag()))
			return reston.getNodes();
		if(str.equals(seattle.getTag()))
			return seattle.getNodes();
		return null;
	}
	

	@RequestMapping(value = "/tag", method = RequestMethod.GET)	
	public @ResponseBody  List<String> getNodes(HttpServletResponse response)
	{
		List<String> nodes = new ArrayList<String>();
		nodes.add(dublin.getTag());
		nodes.add(seattle.getTag());
		nodes.add(reston.getTag());
		response.setContentType("application/json");
		return nodes;
	}
	

	@RequestMapping(value = "tag/addNode", method = RequestMethod.POST, produces="application/json")
	public @ResponseBody List<Status> addCustomer(@Valid NodeObject nodeObject, BindingResult result,HttpServletResponse response) {
		System.out.println("\nPOJO:" + nodeObject); 				
		
		List<Status> msg = new ArrayList<Status>();
		
		if(result.hasErrors()) {
			for(FieldError fd:result.getFieldErrors())			
				msg.add(new Status(fd.getField(),fd.getCode() + " => " + fd.getDefaultMessage()));			
		}		
		else 
		{
			msg.add(new Status("Success","No Errors"));
			
			if(nodeObject.getTag_name().equals(dublin.getTag()))
				dublin.setNode(nodeObject);
			else if(nodeObject.getTag_name().equals(reston.getTag()))
				reston.setNode(nodeObject);
			if(nodeObject.getTag_name().equals(seattle.getTag()))
				seattle.setNode(nodeObject);			
		}
		response.setContentType("application/json");
		return msg;
	}
 
		

	private void initItems()
	{
		reston = new NodeFactory();
		reston.setTag("Reston");		
		for(int i=0;i<4;i++)
			reston.setNode(new NodeObject(reston.getTag() , "res" + (i+1),"10.22.0." + (i+20),"domain-R" + (i+1)));

		seattle = new NodeFactory();
		seattle.setTag("Seattle");		
		for(int i=0;i<3;i++)
			seattle.setNode(new NodeObject(seattle.getTag(),"set" + (i+1),"31.10.0." + (i+20),"domain-S" + (i+1)));

		dublin = new NodeFactory();
		dublin.setTag("Dublin");		
		for(int i=0;i<2;i++)
			dublin.setNode(new NodeObject(dublin.getTag(),"dub" + (i+1),"44.52.0." + (i+20),"domain-D" + (i+1)));		
	}
	
}
