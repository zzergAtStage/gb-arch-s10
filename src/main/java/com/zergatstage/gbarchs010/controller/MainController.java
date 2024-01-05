package com.zergatstage.gbarchs010.controller;

import com.zergatstage.gbarchs010.model.Client;
import com.zergatstage.gbarchs010.repository.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping(path="/main")
public class MainController {
    @Autowired
    private ClientRepository clientRepository;


    @GetMapping("/add")
    public String addNewClientView(Model model){
        model.addAttribute("client", new Client());
        return "add";
    }

    @PostMapping(path="/add")
    public String addNewClient(@RequestParam String surName
            , @RequestParam String firstName
            , @RequestParam String document, Model model) {
        Client cl = new Client();
        cl.setFirstName(firstName);
        cl.setSurName(surName);
        cl.setDocument(document);
        clientRepository.save(cl);

        // Redirect to the showClients endpoint after adding the client
        return "redirect:/main/";
    }
    @GetMapping(path="/all")
    public @ResponseBody Iterable<Client> getAllClients(){
        return clientRepository.findAll();
    }

    @GetMapping(path="/")
    public String listing(Model model){
        try {
            Iterable<Client> clientsList = clientRepository.findAll();
            model.addAttribute("clientsList", clientsList);
            System.out.println("/");
            return "list";
        } catch (Exception e){
            throw new RuntimeException(e);
        }

    }


}
