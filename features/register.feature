Feature: Register
  As a BDD student
  I want to test Guru99 REGISTER page
  so I learn how to use Capybara

Background:
  And Enter on the "REGISTER" page

Scenario: Validate user registration successfully
    Given I enter in the fields with:
        | firstname | Godson                    |
        | lastname  | Adom                      |
        | phone     | 77665544                  |
        | email     | god@pe.co                 |
        | address   | Final East Circumbalacion |
        | city      | Cochabamba                |
        | state     | Cercado                   |
        | postacode | 591                       |
        | username  | godson                    |
        | password  | 137                       |
        | cpassword | 137                       |
    When I press the button "submit"
    Then A "Thank you for registering" message is then displayed on the screen

@bug
@It_should_display_an_alert_message_that_says_"Please_fill_in_the_user_information_section."
Scenario: Validate user registration, leaving all fields empty.
    Given I enter in the fields with:
        | firstname |                           |
    When I press the button "submit"
    Then A "Thank you for registering" message is then displayed on the screen

@bug
@It_should_display_an_alert_message_that_says_"Please_fill_in_the_user_information_section."
Scenario: Validate user registration in the User Information section by only filling out the User Name field.
    Given I enter in the fields with:
        | username  | pepe1137                  |
    When I press the button "submit"
    Then A "Thank you for registering" message is then displayed on the screen

@bug
@It_should_display_an_alert_message_that_says_"Please_fill_in_the_user_information_section."
Scenario: Validate user registration in the User Information section by filling out the User Name empty, the Password and Confirm Password fields with the same value.
    Given I enter in the fields with:
        | password  | 2611                      |
        | cpassword | 2611                      |
    When I press the button "submit"
    Then A "Thank you for registering" message is then displayed on the screen

Scenario: Validate user registration in the User Information section by filling out the User Name, the Password and Confirm Password fields with the same value.
    Given I enter in the fields with:
        | username  | pepe2611                  |
        | password  | 2611                      |
        | cpassword | 2611                      |
    When I press the button "submit"
    Then A "Thank you for registering" message is then displayed on the screen

Scenario: Validate user registration alert in the User Information section by filling out the Password and Confirm Password fields with different values.
    Given I enter in the fields with:
        | password  | 2611                      |
        | cpassword | 137                       |
    When I press the button "submit"
    Then A "PAssword and con.password does not match" message is then displayed on the screen

Scenario: Validate user registration alert in the User Information section by only filling out the Password field.
    Given I enter in the fields with:
        | password  | 2611                      |
    When I press the button "submit"
    Then A "PAssword and con.password does not match" message is then displayed on the screen

Scenario: Validate user registration alert in the User Information section by only filling out the Confirm Password field.
    Given I enter in the fields with:
        | cpassword  | 137                      |
    When I press the button "submit"
    Then A "PAssword and con.password does not match" message is then displayed on the screen

Scenario: Validate fields with letters
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                         | verify | expected |
    | firstName  | Pacomose Alertino                                             | 17     | 17       |
    | lastName   | Lopera Alcantaras                                             | 17     | 17       |
    | address1   | Avenue Wallstreet                                             | 17     | 17       |
    | city       | Whashinton center                                             | 17     | 17       |
    | state      | United States USA                                             | 17     | 17       |

@bug
@It_should_display_an_alert_message_that_says_Only_numbers_can_be_entered
Scenario: Validate fields with letters
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                         | verify | expected |
    | phone      | United States USA                                             | 17     | 17       |
    | postalCode | United States USA                                             | 17     | 17       |

@bug
@It_should_display_an_alert_message_that_says_You_must_enter_a_valid_email_Example:_pepe@gmail.com
Scenario: Validate email field 
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                         | verify | expected |
    | userName   | #!137777111addada                                             | 17     | 17       |

@bug
@It_should_display_an_alert_message_that_says_"Only_a_maximum_of_60_characters_are_allowed"
Scenario: Validate excessive characters on the register fields.
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                             | verify | expected |
    | firstName  | Lorem ipsum dolor sit amet consectetur adipisicing elit. Dele     | 61     | 60       |
    | lastName   | Lorem ipsum dolor sit amet consectetur adipisicing elit. Dele     | 61     | 60       |
    | address1   | Lorem ipsum dolor sit amet consectetur adipisicing elit. Dele     | 61     | 60       |
    | city       | Lorem ipsum dolor sit amet consectetur adipisicing elit. Dele     | 61     | 60       |

@bug
@It_should_display_an_alert_message_that_says_"Only_a_maximum_of_20_characters_are_allowed"
Scenario: Validate excessive characters on the register fields.
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                             | verify | expected |
    | phone      | #!137777111addada1231                                             | 21     | 20       |

@bug
@It_should_display_an_alert_message_that_says_"Only_a_maximum_of_64_characters_are_allowed"
Scenario: Validate excessive characters on the register fields.
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                             | verify | expected |
    | userName   | 312231sdffsad312231sdffsad312231sdffsad312231sdffsad3122@gmil.com | 65     | 64       |

@bug
@It_should_display_an_alert_message_that_says_"Only_a_maximum_of_40_characters_are_allowed"
Scenario: Validate excessive characters on the register fields.
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field      | input                                                             | verify | expected |
    | state      | 232dsfadff144242"#$"232dsfadff144242"#$"7                         | 41     | 40       |

