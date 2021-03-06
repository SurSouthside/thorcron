package com.konakartadmin.app;

import com.konakartadmin.appif.*;
import com.konakartadmin.bl.KKAdmin;

/**
 *  The KonaKart Custom Engine - InsertReview - Generated by CreateKKAdminCustomEng
 */
@SuppressWarnings("all")
public class InsertReview
{
    KKAdmin kkAdminEng = null;

    /**
     * Constructor
     */
     public InsertReview(KKAdmin _kkAdminEng)
     {
         kkAdminEng = _kkAdminEng;
     }

     public int insertReview(String sessionId, AdminReview review) throws KKAdminException
     {
         return kkAdminEng.insertReview(sessionId, review);
     }
}
