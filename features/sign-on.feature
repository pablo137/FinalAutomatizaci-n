Feature: Login
  As a BDD student
  I want to test Guru99 login page
  so I learn how to use Capybara

Background:
  Given Enter on the "SIGN-ON" page

Scenario: Validate a successfully authenticated user
  Given I enter the following user credentials:
    | username | pepe |
    | password | 123  |       
  When I press the button "Submit"
  Then A "Login Successfully" message is then displayed on the screen

Scenario: Validate an unregistered user
  Given I enter the following user credentials:
    | username | fakeuser |
    | password | 123  |       
  When I press the button "Submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen

Scenario: Validate a user with incorrect password
  Given I enter the following user credentials:
    | username | pepe |
    | password | 321  |       
  When I press the button "Submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen

Scenario: Validate fields sign-on
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field    | input                                                         | verify | expected |
    | userName | Evangeline Victor                                             | 17     | 17       |
    | userName | 77733311113777733                                             | 17     | 17       |
    | userName | $###"!###!"##!"#$                                             | 17     | 17       |
    | userName | #!137777111addada                                             | 17     | 17       |
    | password | Evangeline Victor                                             | 17     | 17       |
    | password | 77733311113777733                                             | 17     | 17       |
    | password | $###"!###!"##!"#$                                             | 17     | 17       |
    | password | #!137777111addada                                             | 17     | 17       |

@bug
@It_should_display_an_alert_message_that_says_"Only_a_maximum_of_60_characters_are_allowed"
Scenario: Validate excessive characters on the sign-on fields.
  Given I enter '<field>' with '<input>' and verify <verify> characters   
  When I remark the field '<field>'
  Then the field '<field>' should have only <expected> characters.

  Examples:
    | field    | input                                                         | verify | expected |
    | userName | Esto es un campo de sesenta y uno caracteres Esto es un campo | 61     | 60       |
    | userName | 7773331111377773331111377773331111377773331111377773331111373 | 61     | 60       |
    | userName | $###"!###!"##!"#$###"!###!"##!"#$###"!###!"##!"#$###"!###!"## | 61     | 60       |
    | userName | 137777111addadadapeepep!"#!"#!137777111addadadapeepep!"#!"#ap | 61     | 60       |
    | password | Esto es un campo de sesenta y uno caracteres Esto es un campo | 61     | 60       |
    | password | 7773331111377773331111377773331111377773331111377773331111373 | 61     | 60       |
    | password | $###"!###!"##!"#$###"!###!"##!"#$###"!###!"##!"#$###"!###!"## | 61     | 60       |
    | password | 137777111addadadapeepep!"#!"#!137777111addadadapeepep!"#!"#ap | 61     | 60       |

Scenario: Validate exception by filling in only the User Name field
  Given I enter the following user credentials:
    | username | fakeuser |
    | password |  |       
  When I press the button "Submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen

Scenario: Validate exception by filling in only the Password field
  Given I enter the following user credentials:
    | username |  |
    | password | 137 |       
  When I press the button "Submit"
  Then A "Enter your userName and password correct" message is then displayed on the screen