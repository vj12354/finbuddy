package com.lbg.finbuddy.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.lbg.finbuddy.model.DirectDebt;

/**
 * = DirectDebtRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = DirectDebtRepositoryCustom.class)
public class DirectDebtRepositoryImpl extends QueryDslRepositorySupportExt<DirectDebt> {

    /**
     * TODO Auto-generated constructor documentation
     */
    DirectDebtRepositoryImpl() {
        super(DirectDebt.class);
    }
}