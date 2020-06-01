/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entita;

import java.util.Comparator;
import java.util.Objects;

/**
 *
 * @author Gino
 */
public class Richiestalavoro implements Comparable<Richiestalavoro>{
    
    private int id;
    private String nome;
    private String azienda;
    private String competenze;
    private String data;
    private String orario;
    private String note;

    public Richiestalavoro() {
    }

    public Richiestalavoro(String nome, String azienda, String competenze, String data, String orario, String note) {
        this.nome = nome;
        this.azienda = azienda;
        this.competenze = competenze;
        this.data = data;
        this.orario = orario;
        this.note = note;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getAzienda() {
        return azienda;
    }

    public void setAzienda(String azienda) {
        this.azienda = azienda;
    }

    public String getCompetenze() {
        return competenze;
    }

    public void setCompetenze(String competenze) {
        this.competenze = competenze;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getOrario() {
        return orario;
    }

    public void setOrario(String orario) {
        this.orario = orario;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        return hash;
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
        final Richiestalavoro other = (Richiestalavoro) obj;
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        if (!Objects.equals(this.azienda, other.azienda)) {
            return false;
        }
        if (!Objects.equals(this.competenze, other.competenze)) {
            return false;
        }
        if (!Objects.equals(this.data, other.data)) {
            return false;
        }
        if (!Objects.equals(this.orario, other.orario)) {
            return false;
        }
        if (!Objects.equals(this.note, other.note)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Richiestalavoro{" + "nome=" + nome + ", azienda=" + azienda + ", competenze=" + competenze + ", data=" + data + ", orario=" + orario + ", note=" + note + '}';
    }

    @Override
    public int compareTo(Richiestalavoro o) {
        return this.getData().compareTo(o.getData());
    }
    
    
    
    
    
}
