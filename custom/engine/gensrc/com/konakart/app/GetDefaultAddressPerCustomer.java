package com.konakart.app;

import com.konakart.appif.*;

/**
 *  The KonaKart Custom Engine - GetDefaultAddressPerCustomer - Generated by CreateKKCustomEng
 */
@SuppressWarnings("all")
public class GetDefaultAddressPerCustomer
{
    KKEng kkEng = null;

    /**
     * Constructor
     */
     public GetDefaultAddressPerCustomer(KKEng _kkEng)
     {
         kkEng = _kkEng;
     }

     public AddressIf getDefaultAddressPerCustomer(String sessionId) throws KKException
     {
         return kkEng.getDefaultAddressPerCustomer(sessionId);
     }
}