package com.openet.uis.model;

import javax.validation.constraints.Pattern;
//import javax.xml.bind.annotation.XmlElement;
//import javax.xml.bind.annotation.XmlRootElement;

import org.hibernate.validator.constraints.NotEmpty;



//@XmlRootElement(name = "NodeObject")
public class NodeObject {

	@NotEmpty
	String tag_name;

	@NotEmpty
	String node_name;
	
	@NotEmpty
	@Pattern(regexp="^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$")		
	String ip;
	
	@NotEmpty
	String domain;

	//@XmlElement
	public void setTag_name(String tag) {
		this.tag_name = tag;
	}

	//@XmlElement
	public void setNode_name(String nodeName) {
		this.node_name = nodeName;
	}

	//@XmlElement
	public void setIp(String ip) {
		this.ip = ip;
	}

	//@XmlElement
	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getTag_name() {
		return tag_name;
	}

	public String getNode_name() {
		return node_name;
	}

	public String getIp() {
		return ip;
	}

	public String getDomain() {
		return domain;
	}

	public NodeObject(String tag_name,String nodeName, String ip, String domain) {
		
		this.tag_name = tag_name;
		this.node_name = nodeName;
		this.ip = ip;
		this.domain = domain;
	}
	
	public NodeObject(NodeObject x)
	{
		tag_name = x.tag_name;
		node_name = x.node_name;
		ip = x.ip;
		domain = x.domain;		
	}
	public NodeObject(){}
	
	
	@Override
	public String toString()
	{
		return "[tag_name="+tag_name+",node_name="+node_name+",ip="+ip+",domain="+domain+"]";
	}	
}
