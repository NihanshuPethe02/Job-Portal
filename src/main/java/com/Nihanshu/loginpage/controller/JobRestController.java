package com.Nihanshu.loginpage.controller;

import com.Nihanshu.loginpage.model.ConsumerModel;
import com.Nihanshu.loginpage.model.JobPost;
import com.Nihanshu.loginpage.service.ConsumerService;
import com.Nihanshu.loginpage.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class JobRestController {
    @Autowired
    private JobService service;
    @Autowired
    private ConsumerService consumerService;
//    @GetMapping("/login")
//    public String showLoginPage() {
//        return "login";  // This will look for login.jsp in the /WEB-INF/views/ directory by default
//    }
    @GetMapping({"/", "/home"})
    public String home() {
        return "home";
    }

    @GetMapping("/viewalljobs")
    public String viewJobs(Model model) {
        List<JobPost> jobPosts = service.getAllJobs();
        model.addAttribute("jobPosts", jobPosts);
        return "viewalljobs";
    }

    @RequestMapping("/addjob")
    public String addJob(Model model) {
        model.addAttribute("jobPost", new JobPost());
        return "addjob";
    }
    @PostMapping("/handleForm")
        public String handleAddJobForm(JobPost jobPost,Model model) {
            model.addAttribute("jobPost", jobPost);
            service.addJob(jobPost);
            //System.out.println(jobPost);
            return "success";
        }

    @GetMapping("/jobdetail")
        public String showJobDetails(@RequestParam("postId") int postId, Model model) {
            JobPost jobPost = service.getJob(postId);
            model.addAttribute("jobPost", jobPost);  // Add job post as an attribute to the model
            return "jobdetail";  // Return the jobdetail.jsp view
        }

    @GetMapping ("/keyword")
	public String searchByKeyword(@RequestParam("keyword") String keyword, Model model){
        List<JobPost> jobPosts =service.search(keyword);
        model.addAttribute("jobPosts", jobPosts);
        return "viewalljobs";
//          return"addjob";
	}


    @GetMapping("/contact")
    public String showContactForm(Model model) {
        model.addAttribute("consumer", new ConsumerModel());
        return "contact"; // This returns contact.jsp
    }

    @PostMapping("/submitContact")
    public String submitContact(@ModelAttribute ConsumerModel consumerModel) {
        // Call the consumer service to send the email
        consumerService.sendMail(consumerModel);

        // Redirect or display a success message
        return "redirect:/"; // Replace with your redirect URL after successful submission
    }
}



