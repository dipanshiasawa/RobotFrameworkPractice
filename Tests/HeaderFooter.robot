*** Settings ***
Resource            ../Pages/Common.robot
Resource            ../Pages/HeaderFooterPO.robot
Documentation       This test suite is to test the Header and Footer on each page
Suite Setup         Open Browser to Landing Page
Suite Teardown      Close The Browser

*** Variables ***

*** Test Cases ***
Navigate To Multiple Pages And Verify Header and Footer
    [Documentation]  This test case verifies Header and Footer on each page
    Verify the "Index" Page
    Verify the "Sign In" Page
    Verify the "Contact Us" Page
    Verify the "Women Listing" Page
    Verify the "Dresses Listing" Page
    Verify the "T-Shirt Listing" Page
    Verify the "Specials" Page
    Verify the "New Products" Page
    Verify the "Best Sellers" Page
    Verify the "Our Stores" Page
    Verify the "Terms and Conditions" Page
    Verify the "About Us" Page
    Verify the "Sitemap" Page
    Verify the "Shopping Cart" Page

*** Keywords ***
Verify the "${PAGE}" Page
    Navigate to the "${PAGE}"
    Verify Header and Footer


