Feature: Mercury Tours Flights section
  Find flights with low fares
  Seats not available

  @vuelos
  Scenario: Find a flight
    Given I click the "Flights" link
    And I enter flight details as shown below
      | Type:           | <Type:>           |
      | Passengers:     | <Passengers:>     |
      | Departing From: | <Departing From:> |
      | On:             | <On:>             |
      | Arriving In:    | <Arriving In:>    |
      | Returning:      | <Returning:>      |
      | Service Class:  | <Service Class:>  |
      | Airline:        | <Airline:>        |
    And I press the CONTINUE button
    Then A web site No Seats Avaialble message

    Examples: 
      | Type:     | Passengers: | Departing From: | On:          | Arriving In:  | Returning:   | Service Class: | Airline:            |
      | roundtrip |           1 | Acapulco        | January  1   | Frankfurt     | February  12 | Coach          | No Preference       |
      | oneway    |           2 | Frankfurt       | February  12 | London        | March  11    | Business       | Blue Skies Airlines |
      | roundtrip |           3 | London          | March  11    | New York      | April  22    | First          | Unified Airlines    |
      | oneway    |           4 | New York        | April  22    | Paris         | May  2       | Coach          | Pangea Airlines     |
      | roundtrip |           1 | Paris           | May  2       | Portland      | June  12     | Business       | No Preference       |
      | roundtrip |           2 | Portland        | June  12     | San Francisco | July  10     | First          | Blue Skies Airlines |
      | oneway    |           3 | San Francisco   | July  10     | Seattle       | November  27 | Coach          | Unified Airlines    |
      | oneway    |           4 | Seattle         | November  27 | Sydney        | December  15 | First          | Pangea Airlines     |

  @backToHome
  Scenario: flight BACK to Home
    Given I click the "Flights" link
    And I press the CONTINUE button
    When I press the yellow BACK TO HOME button
    Then I am on the Mercury Tours homepage
