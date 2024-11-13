/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers.service;

/**
 *
 * @author ASUS
 */
import EntitiesDTO.CVRequest;
import EntitiesDTO.CVResponse;
import EntitiesDTO.CVSectionRequest;
import EntitiesDTO.CVSectionResponse;
import controllers.repository.CVRepository;
import controllers.repository.CVSectionRepository;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;
import model.entity.CV;
import model.entity.CVSection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;

@Service
public class CVService {

    @Autowired
    private CVRepository cvRepository;
    @Autowired
    private CVSectionRepository cvSectionRepository;

    public void saveCV(CVRequest cvRequest) {
        // Lưu thông tin CV trước
        CV cv = new CV();
        cv.setJobSeekerId(cvRequest.getJobSeekerId());
        cv.setCreatedAt(LocalDateTime.now());
        cv.setUpdatedAt(LocalDateTime.now());

        cv = cvRepository.save(cv); // Lưu CV để nhận lại cvId

        // Lưu các phần liên quan trong CVSection
        for (CVSectionRequest sectionRequest : cvRequest.getSections()) {
            CVSection section = new CVSection();
            section.setCv(cv); // Thiết lập quan hệ với CV đã lưu
            section.setSectionType(sectionRequest.getType());
            section.setSectionContent(sectionRequest.getContent());
            section.setCreatedAt(LocalDateTime.now());

            cvSectionRepository.save(section);
        }
    }

    public CVResponse getCVById(int cvId) {
        // Tìm CV dựa trên cvId
        CV cv = cvRepository.findById(cvId)
                .orElseThrow(() -> new RuntimeException("CV not found"));

        // Lấy các phần của CV từ CVSection bằng cvId
        List<CVSection> sections = cvSectionRepository.findByCvCvId(cvId);

        // Chuyển đổi các phần CV thành DTO
        List<CVSectionResponse> sectionResponses = sections.stream()
                .map(section -> new CVSectionResponse(section.getSectionType(), section.getSectionContent()))
                .collect(Collectors.toList());

        // Tạo đối tượng CVResponse để trả về
        CVResponse cvResponse = new CVResponse();
        cvResponse.setCvId(cvId);
        cvResponse.setJobSeekerId(cv.getJobSeekerId());
        cvResponse.setSections(sectionResponses);

        return cvResponse;
    }
    


}
