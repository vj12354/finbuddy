package com.lbg.finbuddy.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.lbg.finbuddy.model.TxnPnl;

/**
 * = TxnPnlRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = TxnPnlRepositoryCustom.class)
public class TxnPnlRepositoryImpl extends QueryDslRepositorySupportExt<TxnPnl> {

    /**
     * TODO Auto-generated constructor documentation
     */
    TxnPnlRepositoryImpl() {
        super(TxnPnl.class);
    }
}