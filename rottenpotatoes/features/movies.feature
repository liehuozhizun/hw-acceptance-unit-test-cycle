Feature: movies basics

  As a movie admin
  So that I can create a new movie or destory it
  
Background: movies in database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |

Scenario: create a new movie
  When I go to the home page
  And  I follow "Add new movie"
  And  I fill in "Title" with "TEST MOVIE"
  And  I press "Save Changes"
  Then I should be on the home page
  And  I should see "TEST MOVIE was successfully created."
