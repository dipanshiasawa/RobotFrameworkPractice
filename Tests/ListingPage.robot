*** Settings ***
Resource            ../Pages/ListingPagePO.robot
Resource            ../Pages/Common.robot
Documentation       This test suite is to verify the filter and sorting functionality
Suite Setup         Open Browser to Landing Page
Suite Teardown      Close The Browser

*** Variables ***

*** Test Cases ***
Test Filter Products Functionality
    [Documentation]  This test case verifies the filter functionality
    Given User should be on the home page
    And User selects Summers Dresses from Women tab
    When User selects any one filter
    Then Products should gets filtered successfully

Test Sorting By High Price Functionality
    [Documentation]  This test case verifies the sorting functionality by Highest Price First
    Given User should be on the home page
    And User selects Summers Dresses from Women tab
    When User sorts products by "Highest Price First"
    Then Products should gets sorted successfully

Test Sorting By Low Price Functionality
    [Documentation]  This test case verifies the sorting functionality by Lowest Price First
    Given User should be on the home page
    And User selects Summers Dresses from Women tab
    When User sorts products by "Lowest Price First"
    Then Products should gets sorted successfully

Test Sorting By Ascending Order of Product Name Functionality
    [Documentation]  This test case verifies the sorting functionality by Ascending Order of Product Name
    Given User should be on the home page
    And User selects Summers Dresses from Women tab
    When User sorts products by "Ascending Order"
    Then Products should gets sorted successfully

Test Sorting By Decending Order of Product Name Functionality
    [Documentation]  This test case verifies the sorting functionality by Descending Order of Product Name
    Given User should be on the home page
    And User selects Summers Dresses from Women tab
    When User sorts products by "Descending Order"
    Then Products should gets sorted successfully


*** Keywords ***
User should be on the home page
    Navigate to Home Page

User selects Summers Dresses from Women tab
    Go To Women Tab
    Select Summers Dresses Under Dresses Section

User selects any one filter
    Select Filter For Size

Products should gets filtered successfully
    Filtered Products Should Appear

User sorts products by "${sort_type}"
    Sort Product By "${sort_type}"

Products should gets sorted successfully
    Sorted Products Should Appear
