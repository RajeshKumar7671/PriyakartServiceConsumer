package com.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Address;
import com.app.model.Consumer;
import com.app.service.IAddressService;
import com.app.service.IConsumerService;

@Controller
public class ConsumerController {
	
	@Autowired
	private IConsumerService service;
	@Autowired
	private IAddressService addrService;
	
	@RequestMapping("/regCons")
	public String showConsumerReg(ModelMap map){
		return "ConsumerReg";
	}
	@RequestMapping("/loginCons")
	public String showConsumerLogin(){
		return "ConsumerLogin";
	}
	
	//========Consumer Setting========
	
	@RequestMapping("/consAccount")
	public String showConsumerAccount(@RequestParam("consId")int consId,ModelMap map)
	  {
		Consumer cons=service.getConsumerById(consId);
		map.addAttribute("consObject",cons);
	   return "ConsumerAccount";
      }
	@RequestMapping("/consAddress")
	 public String showConsumerAddress(@RequestParam("consId")int consId,ModelMap map)
	  {
		Consumer cons=service.getConsumerById(consId);
		map.addAttribute("consObject",cons);
	   return "consumerAddress";
      }
	
//=============Update Consumer==============
	@RequestMapping("/updateConsumer")
	public String showUpdateConsumerPage(@ModelAttribute("Cons")Consumer cons,ModelMap map)
	    {
		int consId=cons.getConsId();
	   Consumer consObj=service.getConsumerById(consId);
	         cons.setPwd(consObj.getPwd());
	         cons.setConsEmail(consObj.getConsEmail());
	         cons.setDob(consObj.getDob());
	         cons.setToken(consObj.getToken());
		     cons.setAddr(consObj.getAddr());
		     cons.setProImage(consObj.getProImage());
		     cons.setLanguage(consObj.getLanguage());
		     cons.setInterest(consObj.getInterest());
		 service.updateCons(cons);
		 consObj=service.getConsumerById(consId);
		map.addAttribute("consObject",consObj);
		    return "ConsumerAccount";
	    }
//==========================Update Consumer Address============================
	@RequestMapping("/addrConsUpdate")
	public String showUpdateAddressOfConsumer(
			      @RequestParam("consId")int consId,
			      @ModelAttribute("Address")Address addr,ModelMap map){
		  
		 Consumer cons=service.getConsumerById(consId);
			addr.setAddrId(cons.getAddr().getAddrId());
			System.out.println(addr);
			addrService.updateAddress(addr);
			//Data send to the UI
			 cons=service.getConsumerById(consId);
			map.addAttribute("consObject",cons);  
		  return "consumerAddress";
	    }
	
//======================Change Consumer Password=======================
	@RequestMapping("/consChangePwd")
	public String showConsumerChangePassword(@RequestParam("consId")int consId,ModelMap map){
		Consumer cons=new Consumer();
		cons=service.getConsumerById(consId);
		map.addAttribute("consObject",cons);
	    return "consumerChangePassword";
	  }
	@RequestMapping("/consumerChangePassword")
	public String showSellerChangePassword(@RequestParam("consId")int consId,
			                               @RequestParam("oldPwd")String oldPwd,
		                                   @RequestParam("newPwd")String newPwd,ModelMap map){
		service.changeConsumerPwd(consId, oldPwd, newPwd);
			Consumer cons=new Consumer();
		cons=service.getConsumerById(consId);
		map.addAttribute("consObject",cons);
	    return "consumerChangePassword";
	  }
	/**
	 * Send data to the Rest Client
	 * 1.read Consumer from Container using ModelAttribute
	 */
	@RequestMapping(value="/insertCons",method=RequestMethod.POST)
	public String saveConsumerData(@ModelAttribute("Consumer")Consumer cons,ModelMap map)
	   {
	String msg=service.saveConsumer(cons);
	   map.addAttribute("msg", msg);
		return "ConsumerReg";
      }	
	
	/**
	 * Login process
	 */
	@RequestMapping(value="/loginCons",method=RequestMethod.POST)
	public String doLoginCons(
			@RequestParam("username")String consEmail,
			@RequestParam("password")String Pwd,
			HttpServletRequest req,ModelMap map){
		
		String msg=null;
		String pageName=null;
		if(consEmail!=null && Pwd!=null)
		{
		Consumer consObj=service.getConsumerByUmailAndPwd(consEmail, Pwd);   
		if(consObj==null){
			msg="Username or Password is Invalid";
			map.addAttribute("msg",msg);
			return "ConsumerLogin";
		   }else{
		  //create session and goto home page
			HttpSession ses=req.getSession();
			ses.setAttribute("consObj",consObj);
			return "redirect:priyakart";
			}
	    }
		return "CustomerLogin";
	}

	/**
	 * Logout process
	 */
	@RequestMapping("/consLogout")
	public String doLogout(HttpServletRequest req,ModelMap map){
		//read current session of user
		HttpSession ses=req.getSession(false);
		ses.setAttribute("consName", null);
		ses.invalidate();
		map.addAttribute("msg", "Logout success...");
		return "redirect:priyakart";
	}
}
