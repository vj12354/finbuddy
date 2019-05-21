// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.lbg.finbuddy.application.web;

import com.lbg.finbuddy.application.web.TxnPnlsItemThymeleafController;
import com.lbg.finbuddy.application.web.TxnPnlsItemThymeleafLinkFactory;
import io.springlets.web.mvc.util.MethodLinkFactory;
import io.springlets.web.mvc.util.SpringletsMvcUriComponentsBuilder;
import java.util.Map;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponents;

privileged aspect TxnPnlsItemThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: TxnPnlsItemThymeleafLinkFactory implements MethodLinkFactory<TxnPnlsItemThymeleafController>;
    
    declare @type: TxnPnlsItemThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TxnPnlsItemThymeleafLinkFactory.SHOW = "show";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TxnPnlsItemThymeleafLinkFactory.SHOWINLINE = "showInline";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TxnPnlsItemThymeleafLinkFactory.EDITFORM = "editForm";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TxnPnlsItemThymeleafLinkFactory.UPDATE = "update";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String TxnPnlsItemThymeleafLinkFactory.DELETE = "delete";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<TxnPnlsItemThymeleafController> TxnPnlsItemThymeleafLinkFactory.getControllerClass() {
        return TxnPnlsItemThymeleafController.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents TxnPnlsItemThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        if (methodName.equals(SHOW)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).show(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(SHOWINLINE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).showInline(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(EDITFORM)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).editForm(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(UPDATE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).update(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(DELETE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).delete(null)).buildAndExpand(pathVariables);
        }
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
}
