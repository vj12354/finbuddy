package com.lbg.finbuddy.application.web;
import com.lbg.finbuddy.model.Txn;
import com.lbg.finbuddy.service.api.TxnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = TxnDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Txn.class)
public class TxnDeserializer extends JsonObjectDeserializer<Txn> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private TxnService txnService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param txnService
     * @param conversionService
     */
    @Autowired
    public TxnDeserializer(@Lazy TxnService txnService, ConversionService conversionService) {
        this.txnService = txnService;
        this.conversionService = conversionService;
    }
}
