package com.mvc.dao;

import java.util.List;

import com.mvc.model.Item;

public interface ItemDAO {


	  public boolean addItem(Item item); 
	    public Item getItem(int id);
	    public void deleteItem(int id);
	    public List<Item> getAllItems();
	 
	
}