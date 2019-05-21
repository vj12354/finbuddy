package com.lbg.finbuddy.application.web;
import com.lbg.finbuddy.model.ThirdParty;
import com.lbg.finbuddy.service.api.ThirdPartyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ThirdPartyDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = ThirdParty.class)
public class ThirdPartyDeserializer extends JsonObjectDeserializer<ThirdParty> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ThirdPartyService thirdPartyService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param thirdPartyService
     * @param conversionService
     */
    @Autowired
    public ThirdPartyDeserializer(@Lazy ThirdPartyService thirdPartyService, ConversionService conversionService) {
        this.thirdPartyService = thirdPartyService;
        this.conversionService = conversionService;
    }
}
