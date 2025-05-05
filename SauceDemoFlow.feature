Feature: Verify the flow for the Sauce Demo site
@E2ETest
Scenario: Complete purchase of an item successfully
    Given I am on the SauceDemo login page
    When I login with username "standard_user" and password "secret_sauce"
    And I add a product "Sauce Labs Backpack" to the cart
    And I checkout with firstname "John", lastname "Doe", postalcode "12345"
    Then I should see the order confirmation message