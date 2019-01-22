package com.beans;

public class Produit {
    public Produit(String snom, String sdesc, float sprix, float sjeremy){
        jeremy= sjeremy;
        nom=snom;
        description=sdesc;
        prix_achat=sprix;
    };

    private String nom;

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPrix_achat() {
        return prix_achat;
    }

    public void setPrix_achat(float prix_achat) {
        this.prix_achat = prix_achat;
    }

    public float getJeremy() {
        return jeremy;
    }

    public void setJeremy(float jeremy) {
        this.jeremy = jeremy;
    }

    private String description;
    private float prix_achat, jeremy;
}
