Skip to content
This repository  
Search
Pull requests
Issues
Gist
 @rsindhu1
 Watch 3
  Star 5
 Fork 25 esbanarango/Saas-Class
 Code  Issues 0  Pull requests 0  Wiki  Pulse  Graphs
Branch: master Find file Copy pathSaas-Class/Assignments/Homework 3 (BDD & Cucumber)/features/sort_movie_list.feature
f27d7fd  on Mar 19, 2012
@esbanarango esbanarango HW3 :) 500/500
1 contributor
RawBlameHistory     35 lines (27 sloc)  1.35 KB
Feature: display list of movies sorted by different criteria
 
  As an avid moviegoer
  So that I can quickly browse movies based on my preferences
  I want to see movies sorted by title or release date

Background: movies have been added to database
  
  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |

  And I am on the RottenPotatoes home page

Scenario: sort movies alphabetically
  When I check the following ratings: "PG, R, G, PG-13, NC-17"
   And I press "ratings_submit"
  Then I should see "Aladdin" before "Amelie"

Scenario: sort movies in increasing order of release date
  When I check the following ratings: "PG, R, G, PG-13, NC-17"
   And I press "ratings_submit"
   And I follow "release_date_header"
  Then I should see "1981-06-12 00:00:00 UTC" before "2004-11-05 00:00:00 UTC"

Status API Training Shop Blog About Pricing
© 2016 GitHub, Inc. Terms Privacy Security Contact Help