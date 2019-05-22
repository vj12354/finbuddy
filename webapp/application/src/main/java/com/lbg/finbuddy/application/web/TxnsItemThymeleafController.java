package com.lbg.finbuddy.application.web;
import com.lbg.finbuddy.model.Txn;
import com.lbg.finbuddy.service.api.TxnPnlService;
import com.lbg.finbuddy.service.api.TxnService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

/**
 * = TxnsItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Txn.class, type = ControllerType.ITEM)
@RooThymeleaf
public class TxnsItemThymeleafController {
	
}
