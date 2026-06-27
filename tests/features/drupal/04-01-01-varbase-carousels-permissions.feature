@varbase_carousels @permissions
Feature: Varbase Carousels - carousel block create access by role
  As a site builder
  I want only authorized roles to create carousel blocks

  Scenario: Anonymous users cannot create a carousel block
    Given I am an anonymous user
    When I am on "/block/add/varbase_carousel_block"
    Then I should see "Access denied"

  Scenario: Authenticated users without permission cannot create a carousel block
    Given I am a logged in user with the "Normal user" user
    When I am on "/block/add/varbase_carousel_block"
    Then I should see "Access denied"

  Scenario: Carousel admins can open the carousel block create form
    Given I am a logged in user with the "Carousel admin" user
    When I am on "/block/add/varbase_carousel_block"
    Then I should see "Add Carousel content block"
    And I should see "Carousel slides"
