// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.lbg.finbuddy.model;

import com.lbg.finbuddy.model.Customer;
import com.lbg.finbuddy.model.Txn;
import com.lbg.finbuddy.model.TxnPnl;

privileged aspect TxnPnl_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long TxnPnl.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void TxnPnl.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer TxnPnl.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void TxnPnl.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Customer
     */
    public Customer TxnPnl.getCustomer() {
        return this.customer;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     */
    public void TxnPnl.setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Txn
     */
    public Txn TxnPnl.getTx() {
        return this.tx;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tx
     */
    public void TxnPnl.setTx(Txn tx) {
        this.tx = tx;
    }
    
}