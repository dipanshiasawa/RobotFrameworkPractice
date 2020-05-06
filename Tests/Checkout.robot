*** Settings ***
Resource            ../Pages/Common.robot
Resource            ../Pages/CheckoutPO.robot
Documentation       This test suite is to test the checkout journey of a product
Suite Setup         Open Browser to Landing Page
Suite Teardown      Close The Browser

*** Test Cases ***
Verify Checkout with New User with Check Payment Method
    [Documentation]  This test case verifies that new user should be able to add product in cart
    ...   and should be able to register during the checkout process and select Pay By Check Method
    Given User Adds Item to Cart
    And Go to Checkout Page
    When User Verifies Summary
    And User Register With Valid Credentials
    And User Select Already Added Delivery Address
    And User Agrees The Terms of Services
    And Pay by Check Payment Method is Selected
    And Order is Confirmed
    Then Order Success Message Should Appear
    And User Should Logout Successfully

Verify Checkout with Already Logged in User with Bank Wire Payment Method
    [Documentation]  This test case verifies that already logged in user
    ...   should be able to add product in cart and select Pay By Bank Wire Method
    Given User is Already Logged In
    And User Adds Item to Cart
    And Go to Checkout Page
    When User Verifies Summary
    And User Adds Another Delivery Address
    And User Select Newly Added Delivery Address and Billing Address
    And User Agrees The Terms of Services
    And Pay by Bank Wire Payment Method is Selected
    And Order is Confirmed
    Then Order Success Message Should Appear
    And User Should Logout Successfully

Verify Checkout with Returning Guest User with Check Payment Method
    [Documentation]  This test case verifies that returning user should be able to add product in cart
    ...   and should be able to login during the checkout process and select Pay By Check Method
    Given User Adds Item to Cart
    And Go to Checkout Page
    When User Verifies Summary
    And User Sign In With Valid Credentials
    And User Select Different Delivery Address and Billing Address
    And User Agrees The Terms of Services
    And Pay by Check Payment Method is Selected
    And Order is Confirmed
    Then Order Success Message Should Appear
    And User Should Logout Successfully

*** Keywords ***
User is Already Logged In
    Login With A Valid User

User Register With Valid Credentials
    Register User

User Adds Item to Cart
    Add Any Item To Cart

User Verifies Summary
    Verify Summary Section

Go to Checkout Page
    Navigate to Checkout Page

User Should Logout Successfully
    Log Out User

User Select Already Added Delivery Address
    Select First Address From The List

User Agrees The Terms of Services
    Verify User should Not Proceed Without Accepting
    Accept Terms of Services And Proceed

Pay by Check Payment Method is Selected
    Select Pay By Check Method

Order is Confirmed
    Confirm Order

Order Success Message Should Appear
    Verify Order Success Message

User Adds Another Delivery Address
    Navigate To Add Address Module
    Adds Another Address

User Select Newly Added Delivery Address and Billing Address
    Select Second Address From The List

Pay by Bank Wire Payment Method is Selected
    Select Pay By Bank Wire Method

User Sign In With Valid Credentials
    Login With Valid Credentials

User Select Different Delivery Address and Billing Address
    Select Different Address For Both Addresses
