package com.lbg.finbuddy.application.web;
import com.lbg.finbuddy.model.Account;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = AccountsItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Account.class, type = ControllerType.ITEM)
@RooThymeleaf
public class AccountsItemThymeleafController {
}
