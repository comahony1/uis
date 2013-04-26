package com.openet.uis.model;

import java.util.ArrayList;
import java.util.List;

public class NodeFactory {

	private String tag;
	private List<NodeObject> nodes = new ArrayList<NodeObject>();
	
	
	public NodeFactory() {}
	
	public String getTag()
	{
		return tag;
	}
	
	public List<NodeObject> getNodes()
	{
		return nodes;
	}
	
	public void setTag(String x)
	{
		tag = x;
	}
	
	public void setNodes(List<NodeObject> x)
	{
		for(NodeObject n:x)
			nodes.add(new NodeObject(n));
	}
	
	public void setNode(NodeObject x)
	{		
		nodes.add(new NodeObject(x));
	}	
	
	@Override
	public String toString()
	{
		String str = "\n Tag = " + tag;
		for(NodeObject n:nodes)
			str += "\n" + n ;
		return str;
	}
}
