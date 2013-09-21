package com.konakartadmin.app;

import com.konakartadmin.appif.*;
import com.konakartadmin.bl.KKAdmin;

/**
 *  The KonaKart Custom Engine - InsertConfigurationGroup - Generated by CreateKKAdminCustomEng
 */
@SuppressWarnings("all")
public class InsertConfigurationGroup
{
    KKAdmin kkAdminEng = null;

    /**
     * Constructor
     */
     public InsertConfigurationGroup(KKAdmin _kkAdminEng)
     {
         kkAdminEng = _kkAdminEng;
     }

     public int insertConfigurationGroup(String sessionId, AdminConfigurationGroup configGroup) throws KKAdminException
     {
         return kkAdminEng.insertConfigurationGroup(sessionId, configGroup);
     }
}