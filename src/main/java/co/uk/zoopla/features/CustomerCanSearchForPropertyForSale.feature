Feature : Search For Properties For Sale
  As a customer
  I want the ability to search for property for sale
  So that i can purchase the property


  Scenario Outline: Customer Can Search For Properties For Sale
    Given i navigate to zoopla hompage
    When i enter a "<Location>" in the search text box
    And i select "<Minprice>" from min price dropdown
    And i select "<Maxprice>" from max price dropdown
    And i select "<Property>" from property type dropdown
    And i select "<Bed>" from bedroom dropdown
    And i click on search button
    Then a list of"<ProperTytype>" in "<Location>" are displayed


    Examples:
      | Location| Minprice|Maxprice|Property|Bed    |PropertyType|
      |Manchester| 120,000|£230,000|House   | 3+    | House      |
      | London   | 250,000|£400,000|Farm/land|No Min| Property   |
      | Coventary| 120,000|£250,000|   Flat  | 3+   | Flats      |
      |Birmingham|        |        |         |      |            |



  Scenario Outline: Customer Cannot Search For Property With Missing Value
    Given i navigate to zoopla hompage
    When i enter a "<Location>" in the search text box
    And i select "<Minprice>" from min price dropdown
    And i select "<Maxprice>" from max price dropdown
    And i select "<Property>" from property type dropdown
    And i select "<Bed>" from bedroom dropdown
    And i click on search button
    Then An error message is displayed

    Examples:

      | Location| Minprice|Maxprice|Property|Bed    |PropertyType|
      |          | 120,000|£230,000|House   | 3+    | House      |




  Scenario Outline: error page is displayed for invalid search
    Given i navigate to zoopla hompage
    When i enter a "<Location>" in the search text box
    And i select "<Minprice>" from min price dropdown
    And i select "<Maxprice>" from max price dropdown
    And i select "<Property>" from property type dropdown
    And i select "<Bed>" from bedroom dropdown
    And i click on search button
    Then An error result page is displayed

    Examples:
      | Location| Minprice|Maxprice|Property|Bed    |PropertyType|
      | ol8 3lg | 120,000|£230,000|House   | 3+    | House      |
      | ££££££   | 250,000|£400,000|Farm/land|No Min| Property   |
      |  14356   | 120,000|£250,000|   Flat  | 3+   | Flats      |
      |   | ||    |  |      |

