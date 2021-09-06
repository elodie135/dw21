package com.sport.pspkarate.Model;


import javax.persistence.*;

@Entity
public class Role {
    @Id
    @GeneratedValue
    private Long idrole;
    @ManyToOne(fetch = FetchType.LAZY)@JoinColumn(name = "idsportif")
    private Sportif sportif;
	public Long getIdrole() {
		return idrole;
	}
	public void setIdrole(Long idrole) {
		this.idrole = idrole;
	}
	public Sportif getSportif() {
		return sportif;
	}
	public void setSportif(Sportif sportif) {
		this.sportif = sportif;
	}
    
}
