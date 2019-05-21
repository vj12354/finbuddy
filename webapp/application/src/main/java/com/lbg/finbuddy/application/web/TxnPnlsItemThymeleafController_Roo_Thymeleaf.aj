// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.lbg.finbuddy.application.web;

import com.lbg.finbuddy.application.web.TxnPnlsItemThymeleafController;
import com.lbg.finbuddy.application.web.TxnPnlsItemThymeleafLinkFactory;
import com.lbg.finbuddy.model.TxnPnl;
import com.lbg.finbuddy.service.api.TxnPnlService;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Locale;
import javax.validation.Valid;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect TxnPnlsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: TxnPnlsItemThymeleafController: @Controller;
    
    declare @type: TxnPnlsItemThymeleafController: @RequestMapping(value = "/txnpnls/{txnPnl}", name = "TxnPnlsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource TxnPnlsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<TxnPnlsItemThymeleafController> TxnPnlsItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param txnPnlService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public TxnPnlsItemThymeleafController.new(TxnPnlService txnPnlService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setTxnPnlService(txnPnlService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(TxnPnlsItemThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource TxnPnlsItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void TxnPnlsItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<TxnPnlsItemThymeleafController> TxnPnlsItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void TxnPnlsItemThymeleafController.setItemLink(MethodLinkBuilderFactory<TxnPnlsItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return TxnPnl
     */
    @ModelAttribute
    public TxnPnl TxnPnlsItemThymeleafController.getTxnPnl(@PathVariable("txnPnl") Long id, Locale locale, HttpMethod method) {
        TxnPnl txnPnl = null;
        if (HttpMethod.PUT.equals(method)) {
            txnPnl = txnPnlService.findOneForUpdate(id);
        } else {
            txnPnl = txnPnlService.findOne(id);
        }
        
        if (txnPnl == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"TxnPnl", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return txnPnl;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param txnPnl
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView TxnPnlsItemThymeleafController.show(@ModelAttribute TxnPnl txnPnl, Model model) {
        model.addAttribute("txnPnl", txnPnl);
        return new ModelAndView("txnpnls/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param txnPnl
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView TxnPnlsItemThymeleafController.showInline(@ModelAttribute TxnPnl txnPnl, Model model) {
        model.addAttribute("txnPnl", txnPnl);
        return new ModelAndView("txnpnls/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("txnPnl")
    public void TxnPnlsItemThymeleafController.initTxnPnlBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void TxnPnlsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void TxnPnlsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param txnPnl
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView TxnPnlsItemThymeleafController.editForm(@ModelAttribute TxnPnl txnPnl, Model model) {
        populateForm(model);
        
        model.addAttribute("txnPnl", txnPnl);
        return new ModelAndView("txnpnls/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param txnPnl
     * @param version
     * @param concurrencyControl
     * @param result
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView TxnPnlsItemThymeleafController.update(@Valid @ModelAttribute TxnPnl txnPnl, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, BindingResult result, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("txnpnls/edit");
        }
        // Concurrency control
        TxnPnl existingTxnPnl = getTxnPnlService().findOne(txnPnl.getId());
        if(txnPnl.getVersion() != existingTxnPnl.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("txnPnl", txnPnl);
            model.addAttribute("concurrency", true);
            return new ModelAndView("txnpnls/edit");
        } else if(txnPnl.getVersion() != existingTxnPnl.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("txnPnl", existingTxnPnl);
            model.addAttribute("concurrency", false);
            return new ModelAndView("txnpnls/edit");
        } else if(txnPnl.getVersion() != existingTxnPnl.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            txnPnl.setVersion(existingTxnPnl.getVersion());
        }
        TxnPnl savedTxnPnl = getTxnPnlService().save(txnPnl);
        UriComponents showURI = getItemLink().to(TxnPnlsItemThymeleafLinkFactory.SHOW).with("txnPnl", savedTxnPnl.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param txnPnl
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> TxnPnlsItemThymeleafController.delete(@ModelAttribute TxnPnl txnPnl) {
        getTxnPnlService().delete(txnPnl);
        return ResponseEntity.ok().build();
    }
    
}