package com.lbg.finbuddy.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.lbg.finbuddy.model.Account;

/**
 * = AccountRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = AccountRepositoryCustom.class)
public class AccountRepositoryImpl extends QueryDslRepositorySupportExt<Account> {

    /**
     * TODO Auto-generated constructor documentation
     */
    AccountRepositoryImpl() {
        super(Account.class);
    }
}