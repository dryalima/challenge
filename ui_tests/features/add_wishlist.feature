#language: en

@add @wishlist
Feature: Add item to wishlist 
    As a user, 
    I want add an item to cawishlist
    When I click Add To Wishlist 
    
    Background: 
      Given I am on the main page
      
      Scenario: Add T-shirt to Wishlist 
          Given I am not sign in to website
           When I press the "T-shirts" menu 
            And I mouseover the t-shirt
            And I click on "Add to Wishlist" button
           Then the site should show a error message "You must be logged in to manage your wishlist."
