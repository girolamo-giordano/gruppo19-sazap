/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entita;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Gino
 */
public class Dipendente implements Serializable {

    private static final long serialVersionUID = 1L;
    private int id;
    private String nome;
    private String cognome;
    private String competenze;
    private String azienda;
    private String username;
    private String password;
    private ArrayList<Richiestalavoro> richieste;
    private ArrayList<Lavoroaccettato> lavori;

    public Dipendente() {
        this.richieste=new ArrayList<Richiestalavoro>();
        this.lavori=new ArrayList<Lavoroaccettato>();
    }

    public Dipendente(int id, String nome, String cognome, String competenze, String azienda, String username, String password) {
        this.id = id;
        this.nome = nome;
        this.cognome = cognome;
        this.competenze=competenze;
        this.azienda=azienda;
        this.username = username;
        this.password = password;
        this.richieste=new ArrayList<Richiestalavoro>();
        this.lavori=new ArrayList<Lavoroaccettato>();
    }

    public String getCompetenze() {
        return competenze;
    }

    public void setCompetenze(String competenze) {
        this.competenze = competenze;
    }

    public String getAzienda() {
        return azienda;
    }

    public void setAzienda(String azienda) {
        this.azienda = azienda;
    }
    
    public void addRichiesta(Richiestalavoro r)
    {
        this.richieste.add(r);
    }
    
    public ArrayList<Richiestalavoro> getRichiesteLavoro()
    {
        return this.richieste; 
    }
    
    public void addRichiestaAcc(Lavoroaccettato r)
    {
        this.lavori.add(r);
    }
    
    public ArrayList<Lavoroaccettato> getRichiesteLavoroAcc()
    {
        return this.lavori; 
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getNome() {
        return nome;
    }

    public String getCognome() {
        return cognome;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }

    @Override
    public String toString() {
        return "Dipendente{" + "id=" + id + ", nome=" + nome + ", cognome=" + cognome + ", competenze=" + competenze + ", azienda=" + azienda + ", username=" + username + ", password=" + password + " richieste="+richieste+ "  lav.acc="+lavori+'}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Dipendente other = (Dipendente) obj;
        if (this.id != other.id) {
            return false;
        }
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        if (!Objects.equals(this.cognome, other.cognome)) {
            return false;
        }
        if (!Objects.equals(this.competenze, other.competenze)) {
            return false;
        }
        if (!Objects.equals(this.azienda, other.azienda)) {
            return false;
        }
        if (!Objects.equals(this.username, other.username)) {
            return false;
        }
        if (!Objects.equals(this.password, other.password)) {
            return false;
        }
        return true;
    }


    
    
    
}
