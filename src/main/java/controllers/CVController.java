/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import EntitiesDTO.CVRequest;
import EntitiesDTO.CVResponse;
import EntitiesDTO.CVUpdateRequest;
import controllers.service.CVService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;

@RestController
@RequestMapping("/cv")
public class CVController {

    @Autowired
    private CVService cvService;

    @PostMapping(value = "/save", consumes = "application/json", produces = "application/json")
    public String saveCV(@RequestBody CVRequest cvRequest) {
        try {
            cvService.saveCV(cvRequest);
            return "CV saved successfully";
        } catch (Exception e) {
            return "Error saving CV: " + e.getMessage();
        }
    }

    @GetMapping("/get")
    public ResponseEntity<CVResponse> getCv(@RequestParam("cvId") int cvId) {
        CVResponse cvResponse = cvService.getCVById(cvId);
        return ResponseEntity.ok(cvResponse);
    }
    
    
//    @PutMapping("/update")
//      public ResponseEntity<String> updateCv(@RequestBody CVUpdateRequest cvUpdateRequest) {
//        try {
//            boolean isUpdated = cvService.updateCV(cvUpdateRequest.getJobSeekerId(), 
//                                                   cvUpdateRequest.getCvId(), 
//                                                   cvUpdateRequest.getcVSections());
//
//            if (isUpdated) {
//                return ResponseEntity.ok("CV updated successfully");
//            } else {
//                return ResponseEntity.status(404).body("CV not found or not updated");
//            }
//        } catch (Exception e) {
//            return ResponseEntity.status(500).body("Error updating CV: " + e.getMessage());
//        }
//    
//
//}
}
