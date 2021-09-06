package com.sport.pspkarate.Model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.springframework.validation.annotation.Validated;

import javax.persistence.*;
import java.util.List;

@Validated
@Entity
public class Sportif {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idsportif;  //empty
    private String nom;
    private String prenom;
    private String adresse;
    private int licence; //unique
    private boolean professeur;
    @ManyToOne(fetch = FetchType.LAZY)@JoinColumn(name = "idclub")//egger : important lazy : a rechercher si besoin mais moins pratique
    private Club club;
    //@ManyToOne(fetch = FetchType.LAZY)@JoinColumn(name = "idrole")
    //private Role role;
    @ManyToOne(fetch = FetchType.LAZY)@JoinColumn(name = "idgrade")
    private Grade grade;
    @OneToMany
    private List<Kata> katas;
    public Sportif() {
    }
	public Long getIdsportif() {
		return idsportif;
	}
	public void setIdsportif(Long idsportif) {
		this.idsportif = idsportif;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public int getLicence() {
		return licence;
	}
	public void setLicence(int licence) {
		this.licence = licence;
	}
	public boolean isProfesseur() {
		return professeur;
	}
	public void setProfesseur(boolean professeur) {
		this.professeur = professeur;
	}
	public Club getClub() {
		return club;
	}
	public void setClub(Club club) {
		this.club = club;
	}
	public Grade getGrade() {
		return grade;
	}
	public void setGrade(Grade grade) {
		this.grade = grade;
	}
	public List<Kata> getKatas() {
		return katas;
	}
	public void setKatas(List<Kata> katas) {
		this.katas = katas;
	}
    
}
// le modèle ou entity : est un des composant de l'architecture springboot reposant
// il est utilisé pour définir un modèle dans une application Spring MVC. Model définit
// un support pour les attributs de modèle et est principalement conçu pour ajouter des
// attributs au modèle

//Entity: annotaion 