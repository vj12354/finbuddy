// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.lbg.finbuddy.model;

import com.lbg.finbuddy.model.ThirdParty;

privileged aspect ThirdParty_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String ThirdParty.toString() {
        return "ThirdParty {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", description='" + description + '\'' + 
                ", nomber='" + nomber + '\'' + 
                ", sortcode='" + sortcode + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}
