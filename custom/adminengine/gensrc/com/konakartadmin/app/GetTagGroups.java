package com.konakartadmin.app;

import com.konakartadmin.appif.*;
import com.konakartadmin.bl.KKAdmin;

/**
 *  The KonaKart Custom Engine - GetTagGroups - Generated by CreateKKAdminCustomEng
 */
@SuppressWarnings("all")
public class GetTagGroups
{
    KKAdmin kkAdminEng = null;

    /**
     * Constructor
     */
     public GetTagGroups(KKAdmin _kkAdminEng)
     {
         kkAdminEng = _kkAdminEng;
     }

     public AdminTagGroupSearchResult getTagGroups(String sessionId, AdminSearch search, int offset, int size) throws KKAdminException
     {
         return kkAdminEng.getTagGroups(sessionId, search, offset, size);
     }
}