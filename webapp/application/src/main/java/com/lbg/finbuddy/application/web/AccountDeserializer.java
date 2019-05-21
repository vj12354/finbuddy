package com.lbg.finbuddy.application.web;
import com.lbg.finbuddy.model.Account;
import com.lbg.finbuddy.service.api.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = AccountDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Account.class)
public class AccountDeserializer extends JsonObjectDeserializer<Account> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private AccountService accountService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param accountService
     * @param conversionService
     */
    @Autowired
    public AccountDeserializer(@Lazy AccountService accountService, ConversionService conversionService) {
        this.accountService = accountService;
        this.conversionService = conversionService;
    }
}
