package com.konakartadmin.app;

import com.konakartadmin.appif.*;
import com.konakartadmin.bl.KKAdmin;

/**
 *  The KonaKart Custom Engine - GetModules - Generated by CreateKKAdminCustomEng
 */
@SuppressWarnings("all")
public class GetModules
{
    KKAdmin kkAdminEng = null;

    /**
     * Constructor
     */
     public GetModules(KKAdmin _kkAdminEng)
     {
         kkAdminEng = _kkAdminEng;
     }

     public KKModule[] getModules(String sessionId, int moduleType) throws KKAdminException
     {
         return kkAdminEng.getModules(sessionId, moduleType);
     }
}