package com.konakart.app;

import com.konakart.appif.*;

/**
 *  The KonaKart Custom Engine - GetAlsoPurchased - Generated by CreateKKCustomEng
 */
@SuppressWarnings("all")
public class GetAlsoPurchased
{
    KKEng kkEng = null;

    /**
     * Constructor
     */
     public GetAlsoPurchased(KKEng _kkEng)
     {
         kkEng = _kkEng;
     }

     public ProductIf[] getAlsoPurchased(String sessionId, DataDescriptorIf dataDesc, int productId, int languageId) throws KKException
     {
         return kkEng.getAlsoPurchased(sessionId, dataDesc, productId, languageId);
     }
}
