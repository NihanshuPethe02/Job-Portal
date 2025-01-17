package com.Nihanshu.loginpage.service;

import com.Nihanshu.loginpage.model.ConsumerModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class ConsumerService {

    @Autowired
    private JavaMailSender mailSender;

    public void sendMail(ConsumerModel consumerModel) {
        // Prepare the email content
        String subject = "New Contact Submission";
        String body = "New contact details:\n\n" +
                "Name: " + consumerModel.getName() + "\n" +
                "Phone Number: " + consumerModel.getPhoneNumber() + "\n" +
                "Description: " + consumerModel.getDescription() + "\n" +
                "Email: " + consumerModel.getEmail();

        // Create the email message
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo("nihanshupethe74@gmail.com"); // Replace with your email address
        message.setSubject(subject);
        message.setText(body);
        message.setFrom("no-reply@example.com"); // Optional: you can set a no-reply email

        // Send the email
        mailSender.send(message);
    }
}

