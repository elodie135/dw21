package com.sport.pspkarate.Model;



import javax.persistence.*;

@Entity
public class Kata {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idkata;
    private String nom;
    private String media1;
    private String media2;
    @OneToOne(cascade = CascadeType.ALL) /*synchronise les MAJ des données*/
    @JoinColumn(name = "idgrade")
    private Grade grade;
	public Long getIdkata() {
		return idkata;
	}
	public void setIdkata(Long idkata) {
		this.idkata = idkata;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getMedia1() {
		return media1;
	}
	public void setMedia1(String media1) {
		this.media1 = media1;
	}
	public String getMedia2() {
		return media2;
	}
	public void setMedia2(String media2) {
		this.media2 = media2;
	}
	public Grade getGrade() {
		return grade;
	}
	public void setGrade(Grade grade) {
		this.grade = grade;
	}
    
}
