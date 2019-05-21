package com.lbg.finbuddy.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.lbg.finbuddy.model.ThirdParty;

/**
 * = ThirdPartyRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ThirdPartyRepositoryCustom.class)
public class ThirdPartyRepositoryImpl extends QueryDslRepositorySupportExt<ThirdParty> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ThirdPartyRepositoryImpl() {
        super(ThirdParty.class);
    }
}