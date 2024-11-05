package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employer")
public class EmployerController {
    @GetMapping("/dashboard") //
    public String employerController(Model model) {
        return "employer/employer-dashboard"; //
    }

    @GetMapping("/detail")
    public String employerControllerDetail(Model model) {
        return "employer/employer-detail";
    }

    @GetMapping("/employersearch1")
    public String employerExploreSearch1(Model model) {
        return "employer/explore-employer-search1";
    }

    @GetMapping("/employersearch2")
    public String employerExploreSearch2(Model model) {
        return "employer/explore-employer-search2";
    }

    @GetMapping("/employerlist")
    public String employerExploreList(Model model) {
        return "employer/explore-employer-list";
    }

    @GetMapping("/employersearchmap")
    public String employerExploreSearchMap(Model model) {
        return "employer/explore-employer-searchmap";
    }

    @GetMapping("/employersearchlistmap")
    public String employerExploreSearchListMap(Model model) {
        return "employer/explore-employer-searchlistmap";
    }

    @GetMapping("/employerprofile")
    public String employerProfile(Model model) {
        return "employer/employer-profile";
    }

    @GetMapping("/employermyjob")
    public String employerMyJob(Model model) {
        return "employer/employer-myjob";
    }

    @GetMapping("/employersubmitjob")
    public String employerSubmitJob(Model model) {
        return "employer/employer-submitjob";
    }

    @GetMapping("/employerapplicantjob")
    public String employerApplicantJob(Model model) {
        return "employer/employer-applicantjob";
    }

    @GetMapping("/employershortlistcandidate")
    public String employerShortListCandidate(Model model) {
        return "employer/employer-shortlist-candidate";
    }

    @GetMapping("/employerpackage")
    public String employerPackage(Model model) {
        return "employer/employer-package";
    }

    @GetMapping("/employermessage")
    public String employerMessage(Model model) {
        return "employer/employer-message";
    }

    @GetMapping("/employerchangepass")
    public String employerChangePass(Model model) {
        return "employer/employer-changepass";
    }

    @GetMapping("/employerdeleteaccount")
    public String employerDeleteAcount(Model model) {
        return "employer/employer-deleteaccount";
    }
}
