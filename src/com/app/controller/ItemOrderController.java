package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Item;
import com.app.model.ItemOrder;
import com.app.service.IItemOrderService;
import com.app.service.IItemService;

@Controller
public class ItemOrderController {
	@Autowired
	private IItemOrderService orderService;
	@Autowired
	private IItemService itemService;
  
	//===============Show Item Cart==============================
		@RequestMapping("/showItemDetails")
		public String showItemDetails(@RequestParam("itemId")int itemId,ModelMap map){
			//read data from SL
		Item item=itemService.getItemById(itemId);
			//send to UI 
			map.addAttribute("itemObject", item);
			//specify UI page name
			return  "ItemDetails";
		}
	
	//===============Show Item Cart==============================
	@RequestMapping("/viewItemCartByConsId")
	public String showItemOrderCart( @RequestParam("consId")int consId,ModelMap map){
		//read data from SL
		List<ItemOrder> itemOrderList=orderService.getAllOrderItemByConsId(consId);
		//send to UI 
		map.addAttribute("itemOrderListObj", itemOrderList);
		//specify UI page name
		return  "ItemCart";
	}
//===============Save Item Order In The Vendor DB=============	
		@RequestMapping(value="/saveItemOrder",method=RequestMethod.POST)
		public String saveItemOrderData(@RequestParam("consId")int consId,
				                        @RequestParam("itemId")int itemId,ModelMap map){
			
			Item item=itemService.getItemById(itemId);
			ItemOrder itemOrder=new ItemOrder();
 
			itemOrder.setItemId(item.getItemId());
			itemOrder.setItemName(item.getItemName());
			itemOrder.setItemBrand(item.getItemBrand());
			itemOrder.setPrice(Integer.parseInt(item.getItemSalesPrice()));
			itemOrder.setConsId(consId);
		  String msg=orderService.saveItemOrder(itemOrder);
		   map.addAttribute("msg", msg);
		    return "ItemCart";
	      }	
}
