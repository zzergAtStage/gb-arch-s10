package com.zergatstage.gbarchs010.controller;

import com.zergatstage.gbarchs010.model.Client;
import com.zergatstage.gbarchs010.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(path="/main")
public class MainController {
    @Autowired
    private ClientRepository clientRepository;

    @PostMapping(path="/add")
    public @ResponseBody String addNewClient(@RequestParam String surName
            , @RequestParam String firstName
            , @RequestParam String document) {
        Client cl = new Client();
        cl.setFirstName(firstName);
        cl.setSurName(surName);
        cl.setDocument(document);
        //clientRepository.save(cl);
        return "Saved";
    }
    @GetMapping(path="/all")
    public @ResponseBody Iterable<Client> getAllClients(){
        return clientRepository.findAll();
    }
}
