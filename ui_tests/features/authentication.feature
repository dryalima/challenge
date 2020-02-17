#language: en

@login
Feature: Login to the website 
    As a user, 
    I want to login in the website http://automationpractice.com/index.php,
    When I provide a valid email and a valid password.
    
    Background: 
      Given I already have an account
      
      Scenario: Show the AUTHENTICATION page
          Given I am on the main page
           When I press the "Sign in" menu 
          Then the site should show "AUTHENTICATION" page

      Scenario: Login Successfully
          Given I am on the "AUTHENTICATION" page
           When I input a "<email>" , "<password>"
            And I click on "Sign in" button 
           Then the site should show my account page and my "<name>"
           
           Examples:
           |email|password|name|
           |maria@gmail.com|12345678|Maria Lima|
           |maria.lima@hotmail.com|*123456*|Maria Lima|
           |maria123@gmail.com|abcd1234|Maria Lima|
           |321maria@yahoo.com|ABCD1234|Maria Lima|
           
      Scenario: Login Insuccessfully
          Given I am on the "AUTHENTICATION" page
           When I input a "<email>" , "<password>"
            And I click on "Sign in" button 
           Then the site should show a error message "Authentication failed."
           
           Examples:
           |email|password|
           |maria@gmail|12345|
           |maria!lima@hotmail.com|*1234|
           |maria123@gmail.com|abcd123|
           |321maria@yahoo?com|ABCD1234|
           
      Scenario: Show the FORGOT YOUR PASSWORD? page
          Given I am on the "AUTHENTICATION" page
           When I click on "Forgot your password?" link 
           Then the site should show "FORGOT YOUR PASSWORD?" page
           
      Scenario: Retrieve Password Successfully
          Given I am on the "FORGOT YOUR PASSWORD?" page
            And I click on "Forgot your password?" link 
           When I input a "<email>"
            And I click on "Retrieve Password" button 
           Then the site should show a sucess message
            And the site should send me a email
            
          Examples:
            |email|
            |maria@gmail.com|
            |maria.lima@hotmail.com|
            |321maria@yahoo.com|
                  
      Scenario: Retrieve Password Insuccessfully
          Given I am on the "FORGOT YOUR PASSWORD?" page
            And I click on "Forgot your password?" link 
           When I input a "<email>"
            And I click on "Retrieve Password" button 
           Then the site should show a error message "Invalid email address."
           
           Examples:
            |email|
            |maria|
            |12345|
            |321maria@yahoo@com|
           
