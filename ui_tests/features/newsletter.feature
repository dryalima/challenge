#language: en

@newsletter
Feature: Sign Newsletter 
    As a user, 
    I want to sign newsletter the website http://automationpractice.com/index.php,
    When I provide my email
    
    Background: 
      Given I have not sign the newsletter
      
      Scenario: Sign Newsletter Successfully
          Given I am on the main page
           When I input a "<email>" 
            And I click on "Next" button
          Then the site should show a success message "Newsletter : You have successfully subscribed to this newsletter."
          
          Examples:
            |email|
            |maria@gmail.com|
            |maria.lima@hotmail.com|
            |321maria@yahoo.com|

      Scenario: Sign Newsletter Insuccessfully
          Given I am on the main page
           When I input a "<email>" 
            And I click on "Submit" button
          Then the site should show a error message "Newsletter : Invalid email address."
           
           Examples:
            |email|
            |maria|
            |12345|
            |321maria@yahoo@com|
