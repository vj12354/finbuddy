package com.lbg.finbuddy.application.web;
import com.lbg.finbuddy.model.DirectDebt;
import com.lbg.finbuddy.service.api.DirectDebtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = DirectDebtDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = DirectDebt.class)
public class DirectDebtDeserializer extends JsonObjectDeserializer<DirectDebt> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private DirectDebtService directDebtService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param directDebtService
     * @param conversionService
     */
    @Autowired
    public DirectDebtDeserializer(@Lazy DirectDebtService directDebtService, ConversionService conversionService) {
        this.directDebtService = directDebtService;
        this.conversionService = conversionService;
    }
}
