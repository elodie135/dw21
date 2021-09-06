package com.sport.pspkarate.Model;



import javax.persistence.*;

@Entity
public class Grade {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idgrade;
    private String couleur;
    private boolean acces;
    @OneToOne(cascade = CascadeType.ALL) /*synchronise les MAJ des données*/
    @JoinColumn(name = "kata_nom")
    private Kata kata;
	public Long getIdgrade() {
		return idgrade;
	}
	public void setIdgrade(Long idgrade) {
		this.idgrade = idgrade;
	}
	public String getCouleur() {
		return couleur;
	}
	public void setCouleur(String couleur) {
		this.couleur = couleur;
	}
	public boolean isAcces() {
		return acces;
	}
	public void setAcces(boolean acces) {
		this.acces = acces;
	}
	public Kata getKata() {
		return kata;
	}
	public void setKata(Kata kata) {
		this.kata = kata;
	}
    

    //@OneToOne(optional=false)@JoinColumn(name = "kata_idkata");
}
