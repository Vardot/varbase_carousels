@varbase_carousels @content
Feature: Varbase Carousels - create and manage carousel blocks
  As a content editor
  I want to create carousel blocks
  So that I can place carousels on the site

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: The block library lists the seeded carousel block
    When I go to "/admin/content/block"
    Then I should see "Demo Carousel"
    And I should see "Carousel"

  Scenario: An author creates and saves a carousel block
    When I create a carousel block titled "Spring Promo Carousel"
    Then I should see "has been created"

  Scenario: A newly created carousel block appears in the block library
    When I create a carousel block titled "QA Carousel Block"
    And I go to "/admin/content/block"
    Then I should see "QA Carousel Block"
