package com.konakart.app;

import com.konakart.appif.*;

/**
 *  The KonaKart Custom Engine - GetAddressesPerManufacturer - Generated by CreateKKCustomEng
 */
@SuppressWarnings("all")
public class GetAddressesPerManufacturer
{
    KKEng kkEng = null;

    /**
     * Constructor
     */
     public GetAddressesPerManufacturer(KKEng _kkEng)
     {
         kkEng = _kkEng;
     }

     public AddressIf[] getAddressesPerManufacturer(int manufacturerId) throws KKException
     {
         return kkEng.getAddressesPerManufacturer(manufacturerId);
     }
}
