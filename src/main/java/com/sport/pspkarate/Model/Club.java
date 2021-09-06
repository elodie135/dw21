package com.sport.pspkarate.Model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Club {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idclub;
    private String nom;
    private String adresse;
    private String siegeSociale;
    private int licenceClub;
	public Long getIdclub() {
		return idclub;
	}
	public void setIdclub(Long idclub) {
		this.idclub = idclub;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getSiegeSociale() {
		return siegeSociale;
	}
	public void setSiegeSociale(String siegeSociale) {
		this.siegeSociale = siegeSociale;
	}
	public int getLicenceClub() {
		return licenceClub;
	}
	public void setLicenceClub(int licenceClub) {
		this.licenceClub = licenceClub;
	}
    
}
