#language: en

@add @cart
Feature: Add item to Cart 
    As a user, 
    I want add an item to cart
    When I click Add To Cart 
    
    Background: 
      Given I am on the main page
      
      Scenario: Add Casual Dress to Cart 
           When I press the "Dresses" menu 
            And I navegate to "Casual Dresses" section
            And I mouseover the casual dress
            And I click on "Add to Cart" button
           Then the site should show a success message "Product successfully added to your shopping cart"
