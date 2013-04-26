package com.openet.uis.model;

public class Status {

	private String key;
	private String val;
	
	public Status(String k,String v)
	{
		key = k;
		val = v;
	}
	
	public String getKey()
	{
		return key;
	}
	
	public String getVal()
	{
		return val;
	}
	
	public void setKey(String x)
	{
		key = x;
	}
	
	public void setVal(String x)
	{
		val = x;
	}
}
