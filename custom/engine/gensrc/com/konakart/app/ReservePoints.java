package com.konakart.app;

/**
 *  The KonaKart Custom Engine - ReservePoints - Generated by CreateKKCustomEng
 */
@SuppressWarnings("all")
public class ReservePoints
{
    KKEng kkEng = null;

    /**
     * Constructor
     */
     public ReservePoints(KKEng _kkEng)
     {
         kkEng = _kkEng;
     }

     public int reservePoints(String sessionId, int points) throws KKException
     {
         return kkEng.reservePoints(sessionId, points);
     }
}
