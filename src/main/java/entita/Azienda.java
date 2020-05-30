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
public class Azienda {
    
    private String indirizzo;
    private String numerotel;
    private String nome;

    public Azienda() {
    }

    public Azienda(String indirizzo, String numerotel, String nome) {
        this.indirizzo = indirizzo;
        this.numerotel = numerotel;
        this.nome = nome;
    }

    public void setIndirizzo(String indirizzo) {
        this.indirizzo = indirizzo;
    }

    public void setNumerotel(String numerotel) {
        this.numerotel = numerotel;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getIndirizzo() {
        return indirizzo;
    }

    public String getNumerotel() {
        return numerotel;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public String toString() {
        return "Azienda{" + "indirizzo=" + indirizzo + ", numerotel=" + numerotel + ", nome=" + nome + '}';
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
        final Azienda other = (Azienda) obj;
        if (!Objects.equals(this.indirizzo, other.indirizzo)) {
            return false;
        }
        if (!Objects.equals(this.numerotel, other.numerotel)) {
            return false;
        }
        if (!Objects.equals(this.nome, other.nome)) {
            return false;
        }
        return true;
    }
    
    
}
