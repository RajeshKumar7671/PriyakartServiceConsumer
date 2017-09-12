package com.app.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.app.client.RestClient;
import com.app.dao.IItemOrderDao;
import com.app.model.ItemOrder;
import com.app.util.JsonUtil;

@Repository
public class ItemOrderDaoImpl  implements IItemOrderDao{
	
	@Override
	public String saveItemOrder(ItemOrder itemOrder) {
		String json=null;
		if(itemOrder!=null){
		//1.convert obj to json
		 json=JsonUtil.convertObjToJson(itemOrder); 
		//2.get response msg back
		 return RestClient.connectToProviderToSaveItemOrder(json);
		}
		return "Please Not pass the null object";	
	 }

	@Override
	public List<ItemOrder> getAllOrderItem() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ItemOrder> getAllOrderItemByConsId(int consId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteOrderItemByOrderId(int orderId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ItemOrder getOderItemByOrderId(int orderId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateOrderItem(ItemOrder orderItem) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isOrderItemExist(String itemName) {
		// TODO Auto-generated method stub
		return false;
	}

}
