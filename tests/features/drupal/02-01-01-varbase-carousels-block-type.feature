@varbase_carousels @block-type
Feature: Varbase Carousels - Carousel content block type
  As a site administrator
  I want a ready Carousel content block type with a media slides field
  So that editors can build media carousels

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: The Carousel block content type is listed
    When I go to "/admin/structure/block-content"
    Then I should see "Carousel"

  Scenario: The Carousel type provides the Carousel slides field
    When I go to "/admin/structure/block-content/manage/varbase_carousel_block/fields"
    Then I should see "Carousel slides"
    And I should see "field_media_carousel_slide"

  Scenario: The Carousel block create form renders its fields
    When I go to "/block/add/varbase_carousel_block"
    Then I should see "Add Carousel content block"
    And I should see "Block description"
    And I should see "Carousel slides"
