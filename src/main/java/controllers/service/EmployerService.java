package controllers.service;

import model.entity.Employer;
import controllers.repository.EmployerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployerService {

    @Autowired
    private EmployerRepository employerRepository;

    // Create or update employer
    public Employer saveEmployer(Employer employer) {
        return employerRepository.save(employer);
    }

    // Retrieve employer by id
    public Optional<Employer> getEmployerById(Integer id) {
        return employerRepository.findById(id);
    }

    // Retrieve employer by email
    public Optional<Employer> getEmployerByEmail(String email) {
        return employerRepository.findByEmail(email);
    }

    // Retrieve all employers
    public List<Employer> getAllEmployers() {
        return employerRepository.findAll();
    }

    // Delete employer by id
    public void deleteEmployerById(Integer id) {
        employerRepository.deleteById(id);
    }

    // Update existing employer
    public Optional<Employer> updateEmployer(Integer id, Employer updatedEmployer) {
        // Find employer by id
        Optional<Employer> optionalEmployer = employerRepository.findById(id);
        if (optionalEmployer.isPresent()) {
            Employer existingEmployer = optionalEmployer.get();

            // Update fields
            existingEmployer.setCompanyName(updatedEmployer.getCompanyName());
            existingEmployer.setEmail(updatedEmployer.getEmail());
            existingEmployer.setPassword(updatedEmployer.getPassword());
            existingEmployer.setPhone(updatedEmployer.getPhone());
            existingEmployer.setCompanyLogo(updatedEmployer.getCompanyLogo());
            existingEmployer.setCompanyDescription(updatedEmployer.getCompanyDescription());
            existingEmployer.setAddress(updatedEmployer.getAddress());
            existingEmployer.setWebsite(updatedEmployer.getWebsite());
            existingEmployer.setIndustry(updatedEmployer.getIndustry());
            existingEmployer.setEmployeeSize(updatedEmployer.getEmployeeSize());
            existingEmployer.setFoundedYear(updatedEmployer.getFoundedYear());

            // Save the updated employer
            employerRepository.save(existingEmployer);
            return Optional.of(existingEmployer);
        }
        return Optional.empty();  // Return empty if employer does not exist
    }
}
