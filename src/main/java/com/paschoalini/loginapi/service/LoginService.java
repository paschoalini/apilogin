package com.paschoalini.loginapi.service;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	// Pelo amor de Deus... é sério isso num exemplo?!
    public boolean validateUser(String userid, String password) {
        return userid.equalsIgnoreCase("usuario")
                && password.equalsIgnoreCase("senha");
    }
}
