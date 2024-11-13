/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package EntitiesDTO;

import java.util.List;

public class CVRequest {

    private int jobSeekerId;
    private List<CVSectionRequest> sections;

    // Getters and setters

    public int getJobSeekerId() {
        return jobSeekerId;
    }

    public void setJobSeekerId(int jobSeekerId) {
        this.jobSeekerId = jobSeekerId;
    }

    public List<CVSectionRequest> getSections() {
        return sections;
    }

    public void setSections(List<CVSectionRequest> sections) {
        this.sections = sections;
    }
    
    
    
}