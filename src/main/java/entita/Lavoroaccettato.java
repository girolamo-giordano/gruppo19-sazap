/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entita;

import java.util.Objects;

/**
 *
 * @author Gino
 */
public class Lavoroaccettato implements Comparable<Lavoroaccettato>{
    
    private String azienda;
    private String competenze;
    private String data;
    private String orario;
    private String note;

    public Lavoroaccettato() {
    }

    public Lavoroaccettato(String azienda, String competenze, String data, String orario, String note) {
        this.azienda = azienda;
        this.competenze = competenze;
        this.data = data;
        this.orario = orario;
        this.note = note;
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
        int hash = 5;
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
        final Lavoroaccettato other = (Lavoroaccettato) obj;
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
        return "Lavoroaccettato{" + "azienda=" + azienda + ", competenze=" + competenze + ", data=" + data + ", orario=" + orario + ", note=" + note + '}';
    }
    
        @Override
        public int compareTo(Lavoroaccettato o) {
            return this.getData().compareTo(o.getData());
    }
    
}
