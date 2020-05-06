*** Settings ***
Resource            ../Pages/Common.robot
Resource            ../Pages/NewsletterPO.robot
Documentation       This test suite is to test the newsletter functonality
Suite Setup         Open Browser to Landing Page
Suite Teardown      Close The Browser

*** Variables ***


*** Test Cases ***
Test Newsletter Subscription with invalid email address
    [Documentation]  This test case verifies newsletter subscription with invalid email address should give error message
    When Entered An Invalid Email Address In Newsletter
    Then It should display "Newsletter : Invalid email address."

Test Newsletter Subscription with valid email address
    [Documentation]  This test case verifies newsletter subscription with valid email address should give success message
    When Entered A Valid Email Address In Newsletter
    Then It should display "Newsletter : You have successfully subscribed to this newsletter."

Test Newsletter Subscription with already registered email
    [Documentation]  This test case verifies newsletter subscription with already registered email address should give error message
    When Entered The Same Valid Email Address Again In Newsletter
    Then It should display "Newsletter : This email address is already registered."

*** Keywords ***
Entered An Invalid Email Address In Newsletter
    Enter "Invalid" Email
    Click Submit Button

It should display "${message}"
    Verify "${message}" on the page

Entered A Valid Email Address In Newsletter
    Enter "Valid" Email
    Click Submit Button

Entered The Same Valid Email Address Again In Newsletter
    Enter Same Email Again
    Click Submit Button