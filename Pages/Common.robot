*** Settings ***
Library     SeleniumLibrary
Library     String
Library     Collections
Resource    ./Locators.robot
Resource  ../Utils/Variables.robot

*** Variables ***

*** Keywords ***
Open Browser to Landing Page
    Open Browser     ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    1 seconds
    Set Selenium Timeout   15 seconds

Close The Browser
    Close Browser

Get Random Email Address
    ${random_string} =      Generate Random String   12      [LETTERS][NUMBERS]
    ${VALID_EMAIL} =        catenate                 ${random_string}@test.com
    Set Suite Variable     ${VALID_EMAIL}

Login With Valid Credentials
    Enter Username
    Enter Password
    Click Submit
    Verify User is Logged In Successfully

Enter Username
    Input Text        ${USERNAME_LOCATOR}     ${VALID_EMAIL}

Generate New Password
    ${VALID_PASSWORD} =   Generate Random String    10   [LETTERS][NUMBERS]
    Set Suite Variable     ${VALID_PASSWORD}
    Enter Password

Enter Password
    Input Text        ${PASSWORD_LOCATOR}     ${VALID_PASSWORD}

Click Submit
    Click Element    ${LOGIN_SUBMIT_LOCATOR}

Verify User is Logged In Successfully
    Verify Sign Out Button Availability

Go to Authentication Page
    Click Element   ${SIGN_IN_LOCATOR}
    Page Should Contain Element    ${SIGN_IN_VALIDATOR}

Verify Sign Out Button Availability
    Page Should Contain Element    ${SIGN_OUT_LOCATOR}

Click Sign Out Button
    Click Element       ${SIGN_OUT_LOCATOR}

Verify User should be Signed Out
    Page Should Contain Element   ${SIGN_IN_LOCATOR}

Register with Valid Credentials
    Enter New Email Address
    Click Create Account Button
    Fill Personal Information
    Fill Address Information
    Click Register Button

Enter New Email Address
    Get Random Email Address
    Input Text     ${CREATE_EMAIL_LOCATOR}   ${VALID_EMAIL}

Click Create Account Button
    Click Element       ${SUBMIT_CREATE_LOCATOR}
    ${available} =     Run Keyword And Return Status    Page Should Not Contain    ${EMAIL_ALREADY_EXISTS_ERROR}
    Run Keyword Unless   ${available}    Run Keywords   Enter New Email Address   AND   Click Create Account Button
    Verify Create Account Page

Verify Create Account Page
    Wait Until Page Contains Element         ${SIGN_UP_VALIDATOR}

Fill Personal Information
    Enter User First Name
    Enter User Last Name
    Generate New Password

Enter User First Name
    Input Text   ${USER_FIRSTNAME_LOCATOR}   ${USER_FIRSTNAME}

Enter User Last Name
    Input Text   ${USER_LASTNAME_LOCATOR}   ${USER_LASTNAME}

Fill Address Information
    Enter First Name
    Enter Last Name
    Enter Address
    Enter City
    Enter State
    Enter Zip Code
    Enter Mobile Phone
    Enter Address Alias

Enter First Name
    Input Text   ${FIRSTNAME_LOCATOR}   ${USER_FIRSTNAME}

Enter Last Name
    Input Text   ${LASTNAME_LOCATOR}   ${USER_LASTNAME}

Enter Address
    Input Text    ${ADDRESS_LOCATOR}    ${ADDRESS}
Enter City
    Input Text   ${CITY_LOCATOR}   ${CITY}

Enter State
    Select From List By Label    ${STATE_LOCATOR}   ${STATE}

Enter Zip Code
    Input Text   ${ZIP_CODE_LOCATOR}   ${ZIP}

Enter Mobile Phone
    Input Text   ${MOBILE_PHONE_LOCATOR}   ${1234567890}

Enter Address Alias
    ${address} =   Generate Random String    8    [LETTERS]
    Input Text    ${ADDRESS_ALIAS_LOCATOR}     ${address}
    Append To List    ${ADDRESS_ALIAS}   ${address}

Click Register Button
    Click Element    ${REGISTER_BUTTON_LOCATOR}
    Page Should Contain Element    ${SIGN_OUT_LOCATOR}

