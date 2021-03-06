Feature: Wishlist
  In order to keep track of courses they want to take
  A user
  Should be able to add/remove classes to/from their wishlist and view their
    wishlist and toggle notifications

  Background:
    Given I have authenticated as some user

  Scenario: View wishlist
    Given I have a course in my wishlist
    When I view my wishlist
    Then I should see that course in my wishlist

  Scenario: Add course to wishlist via course show page
    When I am viewing a course
    And I add it to my wishlist
    And I view my wishlist
    Then I should see that course in my wishlist

  Scenario: Add course to wishlist via wishlist page
    When I view my wishlist
    And I select a course via wishlist search
    Then I should see that course in my wishlist

  Scenario: Remove course from wishlist via course show page
    Given I have a course in my wishlist
    And I am viewing that course
    When I remove it from my wishlist
    And I view my wishlist
    Then I should not see that course in my wishlist

  Scenario: Remove course from wishlist via wishlist page
    Given I have a course in my wishlist
    When I view my wishlist
    And I remove it from my wishlist
    Then I should not see that course in my wishlist

  Scenario: Turn on notifications for a course
    Given I have a course in my wishlist
    And I have notifications turned off for that course
    When I view my wishlist
    And I turn on notifications
    Then I should have notifications turned on for that course

  Scenario: Turn off notifications for a course
    Given I have a course in my wishlist
    And I have notifications turned on for that course
    When I view my wishlist
    And I turn off notifications
    Then I should have notifications turned off for that course
