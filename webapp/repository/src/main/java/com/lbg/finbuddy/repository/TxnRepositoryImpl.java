package com.lbg.finbuddy.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.lbg.finbuddy.model.Txn;

/**
 * = TxnRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = TxnRepositoryCustom.class)
public class TxnRepositoryImpl extends QueryDslRepositorySupportExt<Txn> {

    /**
     * TODO Auto-generated constructor documentation
     */
    TxnRepositoryImpl() {
        super(Txn.class);
    }
}