package com.example.groupe_1.dao.jpa;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

/**
 * EMFManager create and close the connection with the database.
 */
public class EMFManager {
    private static EntityManagerFactory EMF_SINGLETON = null;

    /**
     * Private constructor to avoid instantiation
     */
    private EMFManager() {
    }

    /**
     * This method create a unique instantiation of the connection, build with the singleton pattern.
     */
    public static EntityManagerFactory getEMF() {
        if (EMF_SINGLETON == null) {
            try {
                EMF_SINGLETON = Persistence.createEntityManagerFactory("PU");
            } catch (Exception e) {
                e.printStackTrace();
                System.err.println("Connexion impossible");
            }
        }
        return EMF_SINGLETON;
    }

    /**
     * This method close the connection.
     * AppListener use it.
     */
    public static void closeEMF() {
        if (EMF_SINGLETON != null && EMF_SINGLETON.isOpen()) {
            EMF_SINGLETON.close();
        }
    }
}
