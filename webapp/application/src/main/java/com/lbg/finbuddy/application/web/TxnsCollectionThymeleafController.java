package com.lbg.finbuddy.application.web;
import com.lbg.finbuddy.model.Txn;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = TxnsCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Txn.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class TxnsCollectionThymeleafController {
}
