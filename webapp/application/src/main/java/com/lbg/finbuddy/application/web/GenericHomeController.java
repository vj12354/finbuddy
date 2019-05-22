package com.lbg.finbuddy.application.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lbg.finbuddy.service.api.TxnPnlService;

@Controller
public class GenericHomeController {

	@Autowired
	private TxnPnlService txpnlService;

   @GetMapping(value = "/txs/generate"/*, name = "editForm"*/)
   public ModelAndView generatePDL() {
       System.out.println("Generate Pay day loans....");
	   txpnlService.generatePDLs();
       System.out.println("Completed generation of Pay day loans....");
       return new ModelAndView("txnpnls/generate");
   }

}
