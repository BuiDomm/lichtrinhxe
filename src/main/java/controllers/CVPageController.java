/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import EntitiesDTO.CVRequest;
import EntitiesDTO.CVResponse;
import controllers.service.CVService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

/**
 *
 * @author ASUS
 */
@Controller
@RequestMapping("/cv")
public class CVPageController {

    @GetMapping("/view")
    public String viewCvPage(@RequestParam("cvId") int cvId, Model model) {
        model.addAttribute("cvId", cvId);
        return "cv/mycv";
    }

    // Create CV Page 
    @GetMapping("/createcv")
    public String createcv(Model model) {
        return "cv/createcv"; //
    }
}
