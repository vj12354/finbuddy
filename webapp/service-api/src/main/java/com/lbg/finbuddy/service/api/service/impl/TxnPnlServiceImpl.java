package com.lbg.finbuddy.service.api.service.impl;
import com.lbg.finbuddy.model.ThirdParty;
import com.lbg.finbuddy.model.Txn;
import com.lbg.finbuddy.model.TxnPnl;
import com.lbg.finbuddy.repository.TxnRepository;
import com.lbg.finbuddy.service.api.ThirdPartyService;
import com.lbg.finbuddy.service.api.TxnPnlService;
import com.lbg.finbuddy.service.api.TxnService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

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
	@Autowired
	private TxnPnlService txPDLService;

	@Override
	@Transactional(propagation=Propagation.REQUIRED, readOnly= false)
	public void generatePDLs() {
		deleteExisting();
		List<Txn> txs = txService.findAll();
		List<ThirdParty> tParties = tPartyService.findAll();
		for (Txn tx : txs) {
			if ( isEmpty(tx.getToNomber(), tx.getToSortcode()) ) {
				continue;
			}
			if (matchs(tx, tParties)) {
				recordCustomerTx(tx);
			}
		}
	}
	
	private void deleteExisting() {
		List<TxnPnl> list = txPDLService.findAll();
		List<Long> ids = new ArrayList<>();
		for(TxnPnl tx: list) {
			ids.add(tx.getId());
		}
		txPDLService.delete(ids);
	}

	private void recordCustomerTx(Txn tx) {
		TxnPnl entity = new TxnPnl();
		entity.setCustomer(tx.getAccount().getCustomer());
		entity.setTx(tx);
		txPDLService.save(entity);
	}

	private boolean matchs(Txn tx, List<ThirdParty> tParties) {
		for (ThirdParty tp: tParties) {
			if (tx.getToNomber().equals(tp.getNomber()) && tx.getToSortcode().equals(tp.getSortcode())) {
				return true;
			}
		}
		return false;
	}

	private boolean isEmpty(String... vals) {
		for (String val: vals) {
			if (val == null || val.trim().length() == 0) {
				return true;
			}
		}
		return false;
	}
}
