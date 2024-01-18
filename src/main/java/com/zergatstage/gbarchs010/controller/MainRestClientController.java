package com.zergatstage.gbarchs010.controller;

import com.zergatstage.gbarchs010.model.Client;
import com.zergatstage.gbarchs010.repository.ClientRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import lombok.NonNull;
import org.springdoc.core.annotations.ParameterObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/client")
public class MainRestClientController {
    @Autowired
    private ClientRepository clientRepository;


    @GetMapping(path="/all")
    public @ResponseBody Iterable<Client> getAllClients(){
        return clientRepository.findAll();
    }
    @Operation(summary = "Get a client by its id")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Found the client",
                    content = { @Content(mediaType = "application/json",
                            schema = @Schema(implementation = Client.class)) }),
            @ApiResponse(responseCode = "400", description = "Invalid id supplied",
                    content = @Content),
            @ApiResponse(responseCode = "404", description = "Client not found",
                    content = @Content) })
    @GetMapping("/{id}")
    public Client findClientById(@PathVariable int id){

        return clientRepository.findById(id)
                .orElseThrow();
    }
    @GetMapping("/filter")
    public Page<Client> filterClients(@ParameterObject Pageable pageable) {
        return clientRepository.findAll(pageable);
    }

    @PutMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Client updateClient(@PathVariable("id") final String id,
                               @RequestBody final Client client){
        return client;
    }
    @PatchMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Client patchClient(@PathVariable("id") final String id,
                               @RequestBody final Client client){
        return client;
    }
    @PostMapping("/")
    @ResponseStatus(HttpStatus.CREATED)
    public Client postClient(@NotNull @RequestBody final Client client){
        return client;
    }
    @RequestMapping(method = RequestMethod.HEAD, value = "/")
    @ResponseStatus(HttpStatus.OK)
    public Client headClient() {
        return new Client();
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public int deleteClient(@PathVariable final int id) {
        return id;
    }
}
