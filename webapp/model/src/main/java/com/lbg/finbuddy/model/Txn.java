package com.lbg.finbuddy.model;
import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;
import org.springframework.roo.addon.jpa.annotations.entity.RooJpaEntity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Version;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

/**
 * = Txn
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJavaBean
@RooToString
@RooJpaEntity
@RooEquals(isJpaEntity = true)
public class Txn {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Version
    private Integer version;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "S-")
    private Date txDate;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @NumberFormat
    private Float amount;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private String description;
    
    @ManyToOne
    private Account account;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Size(min = 8, max = 8)
    @Pattern(regexp = "\\d+")
    private String toNomber;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    @Size(min = 6, max = 6)
    @Pattern(regexp = "\\d+")
    private String toSortcode;
}
