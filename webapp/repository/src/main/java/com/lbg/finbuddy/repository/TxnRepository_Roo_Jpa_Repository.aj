// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.lbg.finbuddy.repository;

import com.lbg.finbuddy.model.Txn;
import com.lbg.finbuddy.repository.TxnRepository;
import com.lbg.finbuddy.repository.TxnRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TxnRepository_Roo_Jpa_Repository {
    
    declare parents: TxnRepository extends DetachableJpaRepository<Txn, Long>;
    
    declare parents: TxnRepository extends TxnRepositoryCustom;
    
    declare @type: TxnRepository: @Transactional(readOnly = true);
    
}
