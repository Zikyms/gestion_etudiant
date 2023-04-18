package Classes;

public class etudiants {
	public int getId_etu() {
		return id_etu;
	}
	public void setId_etu(int id_etu) {
		this.id_etu = id_etu;
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
	public String getSexe() {
		return sexe;
	}
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getParcours() {
		return parcours;
	}
	public void setParcours(String parcours) {
		this.parcours = parcours;
	}
	private int id_etu;
	private String nom;
	private String prenom;
	private String sexe;
	private String date;
	private String parcours;

}
