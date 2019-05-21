// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.lbg.finbuddy.application.web;

import com.lbg.finbuddy.application.web.ThirdPartiesItemThymeleafController;
import com.lbg.finbuddy.application.web.ThirdPartiesItemThymeleafLinkFactory;
import com.lbg.finbuddy.model.ThirdParty;
import com.lbg.finbuddy.service.api.ThirdPartyService;
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

privileged aspect ThirdPartiesItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ThirdPartiesItemThymeleafController: @Controller;
    
    declare @type: ThirdPartiesItemThymeleafController: @RequestMapping(value = "/thirdparties/{thirdParty}", name = "ThirdPartiesItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ThirdPartiesItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ThirdPartiesItemThymeleafController> ThirdPartiesItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param thirdPartyService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ThirdPartiesItemThymeleafController.new(ThirdPartyService thirdPartyService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setThirdPartyService(thirdPartyService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ThirdPartiesItemThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ThirdPartiesItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ThirdPartiesItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ThirdPartiesItemThymeleafController> ThirdPartiesItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ThirdPartiesItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ThirdPartiesItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return ThirdParty
     */
    @ModelAttribute
    public ThirdParty ThirdPartiesItemThymeleafController.getThirdParty(@PathVariable("thirdParty") Long id, Locale locale, HttpMethod method) {
        ThirdParty thirdParty = null;
        if (HttpMethod.PUT.equals(method)) {
            thirdParty = thirdPartyService.findOneForUpdate(id);
        } else {
            thirdParty = thirdPartyService.findOne(id);
        }
        
        if (thirdParty == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"ThirdParty", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return thirdParty;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param thirdParty
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ThirdPartiesItemThymeleafController.show(@ModelAttribute ThirdParty thirdParty, Model model) {
        model.addAttribute("thirdParty", thirdParty);
        return new ModelAndView("thirdparties/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param thirdParty
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ThirdPartiesItemThymeleafController.showInline(@ModelAttribute ThirdParty thirdParty, Model model) {
        model.addAttribute("thirdParty", thirdParty);
        return new ModelAndView("thirdparties/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("thirdParty")
    public void ThirdPartiesItemThymeleafController.initThirdPartyBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ThirdPartiesItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ThirdPartiesItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param thirdParty
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ThirdPartiesItemThymeleafController.editForm(@ModelAttribute ThirdParty thirdParty, Model model) {
        populateForm(model);
        
        model.addAttribute("thirdParty", thirdParty);
        return new ModelAndView("thirdparties/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param thirdParty
     * @param version
     * @param concurrencyControl
     * @param result
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ThirdPartiesItemThymeleafController.update(@Valid @ModelAttribute ThirdParty thirdParty, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, BindingResult result, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("thirdparties/edit");
        }
        // Concurrency control
        ThirdParty existingThirdParty = getThirdPartyService().findOne(thirdParty.getId());
        if(thirdParty.getVersion() != existingThirdParty.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("thirdParty", thirdParty);
            model.addAttribute("concurrency", true);
            return new ModelAndView("thirdparties/edit");
        } else if(thirdParty.getVersion() != existingThirdParty.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("thirdParty", existingThirdParty);
            model.addAttribute("concurrency", false);
            return new ModelAndView("thirdparties/edit");
        } else if(thirdParty.getVersion() != existingThirdParty.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            thirdParty.setVersion(existingThirdParty.getVersion());
        }
        ThirdParty savedThirdParty = getThirdPartyService().save(thirdParty);
        UriComponents showURI = getItemLink().to(ThirdPartiesItemThymeleafLinkFactory.SHOW).with("thirdParty", savedThirdParty.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param thirdParty
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ThirdPartiesItemThymeleafController.delete(@ModelAttribute ThirdParty thirdParty) {
        getThirdPartyService().delete(thirdParty);
        return ResponseEntity.ok().build();
    }
    
}