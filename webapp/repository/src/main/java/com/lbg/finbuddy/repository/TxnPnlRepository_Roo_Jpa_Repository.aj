// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.lbg.finbuddy.repository;

import com.lbg.finbuddy.model.TxnPnl;
import com.lbg.finbuddy.repository.TxnPnlRepository;
import com.lbg.finbuddy.repository.TxnPnlRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TxnPnlRepository_Roo_Jpa_Repository {
    
    declare parents: TxnPnlRepository extends DetachableJpaRepository<TxnPnl, Long>;
    
    declare parents: TxnPnlRepository extends TxnPnlRepositoryCustom;
    
    declare @type: TxnPnlRepository: @Transactional(readOnly = true);
    
}