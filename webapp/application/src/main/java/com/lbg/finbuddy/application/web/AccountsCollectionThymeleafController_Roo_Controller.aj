// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.lbg.finbuddy.application.web;

import com.lbg.finbuddy.application.web.AccountsCollectionThymeleafController;
import com.lbg.finbuddy.service.api.AccountService;

privileged aspect AccountsCollectionThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private AccountService AccountsCollectionThymeleafController.accountService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return AccountService
     */
    public AccountService AccountsCollectionThymeleafController.getAccountService() {
        return accountService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param accountService
     */
    public void AccountsCollectionThymeleafController.setAccountService(AccountService accountService) {
        this.accountService = accountService;
    }
    
}
