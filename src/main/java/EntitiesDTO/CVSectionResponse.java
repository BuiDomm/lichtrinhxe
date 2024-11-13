/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package EntitiesDTO;

/**
 *
 * @author ASUS
 */
public class CVSectionResponse {
     private String sectionType;
    private String sectionContent; // JSON string của phần CV

    // Constructor
    public CVSectionResponse(String sectionType, String sectionContent) {
        this.sectionType = sectionType;
        this.sectionContent = sectionContent;
    }

    public String getSectionType() {
        return sectionType;
    }

    public void setSectionType(String sectionType) {
        this.sectionType = sectionType;
    }

    public String getSectionContent() {
        return sectionContent;
    }

    public void setSectionContent(String sectionContent) {
        this.sectionContent = sectionContent;
    }
    
}
