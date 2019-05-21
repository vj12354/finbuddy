package com.lbg.finbuddy.application.web;
import com.lbg.finbuddy.model.Customer;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = CustomersItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Customer.class, type = ControllerType.ITEM)
@RooThymeleaf
public class CustomersItemThymeleafController {
}
