package com.lbg.finbuddy.application.web;
import com.lbg.finbuddy.model.TxnPnl;
import com.lbg.finbuddy.service.api.TxnPnlService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = TxnPnlDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = TxnPnl.class)
public class TxnPnlDeserializer extends JsonObjectDeserializer<TxnPnl> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private TxnPnlService txnPnlService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param txnPnlService
     * @param conversionService
     */
    @Autowired
    public TxnPnlDeserializer(@Lazy TxnPnlService txnPnlService, ConversionService conversionService) {
        this.txnPnlService = txnPnlService;
        this.conversionService = conversionService;
    }
}
