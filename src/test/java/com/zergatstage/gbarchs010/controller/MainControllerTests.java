package com.zergatstage.gbarchs010.controller;

import com.zergatstage.gbarchs010.model.Client;
import com.zergatstage.gbarchs010.repository.ClientRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(MainController.class)
public class MainControllerTests {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private ClientRepository clientRepository;

    @Test
    public void testAddNewClient() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.post("/main/add")
                        .param("surName", "Doe")
                        .param("firstName", "John")
                        .param("document", "123456789"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/main/"));

        verify(clientRepository, times(1)).save(any(Client.class));
    }

    @Test
    public void testGetAllClients() throws Exception {
        when(clientRepository.findAll()).thenReturn(java.util.Collections.emptyList());

        mockMvc.perform(MockMvcRequestBuilders.get("/main/all"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray());

        verify(clientRepository, times(1)).findAll();
    }

    @Test
    public void testListing() throws Exception {
        when(clientRepository.findAll()).thenReturn(java.util.Collections.emptyList());

        mockMvc.perform(MockMvcRequestBuilders.get("/main/"))
                .andExpect(status().isOk())
                .andExpect(model().attributeExists("clientsList"))
                .andExpect(view().name("list"));

        verify(clientRepository, times(1)).findAll();
    }
}
