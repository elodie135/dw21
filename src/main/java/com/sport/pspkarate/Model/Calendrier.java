package com.sport.pspkarate.Model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Calendrier {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idcalendrier;
    private String lieu ;
    private String theme;
    private int date;
	public Long getIdcalendrier() {
		return idcalendrier;
	}
	public void setIdcalendrier(Long idcalendrier) {
		this.idcalendrier = idcalendrier;
	}
	public String getLieu() {
		return lieu;
	}
	public void setLieu(String lieu) {
		this.lieu = lieu;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
    
}
