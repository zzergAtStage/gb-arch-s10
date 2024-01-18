package com.zergatstage.gbarchs010.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import java.util.Date;

@Entity
public class Consultation {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int consultationId;

    private int clientID;
    private int petId;

    private Date consultationDate;

    private String description;

    public int getConsultationId() {
        return consultationId;
    }

    public int getClientID() {
        return clientID;
    }

    public int getPetId() {
        return petId;
    }

    public Date getConsultationDate() {
        return consultationDate;
    }

    public String getDescription() {
        return description;
    }

    public void setClientID(int clientID) {
        this.clientID = clientID;
    }

    public void setPetId(int petId) {
        this.petId = petId;
    }

    public void setConsultationDate(Date consultationDate) {
        this.consultationDate = consultationDate;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
