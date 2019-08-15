package pe.farmaciasperuanas.api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pe.farmaciasperuanas.api.model.User;

@RestController
@RequestMapping("/api")
public class TemplateRest {

    @GetMapping("/user")
    public User restShow(){
        User user = new User();
        user.setName("Hector");
        user.setLastane("Vallejos Sanchez");
        user.setEmail("hvallejos@farmaciasperuanas.pe");
        user.setRole("ROLE_USER");
        return user;
    }
}
