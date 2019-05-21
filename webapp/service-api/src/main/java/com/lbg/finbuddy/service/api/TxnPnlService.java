package com.lbg.finbuddy.service.api;
import com.lbg.finbuddy.model.TxnPnl;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = TxnPnlService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = TxnPnl.class)
public interface TxnPnlService {
	void generatePDLs();
}
