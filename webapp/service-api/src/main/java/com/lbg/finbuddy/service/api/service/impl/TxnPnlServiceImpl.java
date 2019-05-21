package com.lbg.finbuddy.service.api.service.impl;
import com.lbg.finbuddy.model.ThirdParty;
import com.lbg.finbuddy.model.Txn;
import com.lbg.finbuddy.repository.TxnRepository;
import com.lbg.finbuddy.service.api.ThirdPartyService;
import com.lbg.finbuddy.service.api.TxnPnlService;
import com.lbg.finbuddy.service.api.TxnService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;

/**
 * = TxnPnlServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = TxnPnlService.class)
public class TxnPnlServiceImpl implements TxnPnlService {
	
	@Autowired
	private TxnService txService;
	@Autowired
	private ThirdPartyService tPartyService;

	@Override
	public void generatePDLs() {
		List<Txn> txs = txService.findAll();
		List<ThirdParty> tParties = tPartyService.findAll();
		for (Txn tx : txs) {
//			tx.get
		}
		
	}
}
