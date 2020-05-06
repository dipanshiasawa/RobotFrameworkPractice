*** Settings ***
Library     SeleniumLibrary
Resource    ./Locators.robot
Resource    ./Common.robot

*** Variables ***


*** Keywords ***
Log Out User
    ${available} =     Run Keyword And Return Status    Verify Sign Out Button Availability
    Run Keyword If   ${available}    Run Keywords   Click Sign Out Button   AND   Verify User should be Signed Out
    ...    ELSE    Log to console    User is already signed out.

Login With A Valid User
    Go to Authentication Page
    Login With Valid Credentials

Register User
#    Go to Authentication Page
    Register with Valid Credentials

Add Any Item To Cart
    Go To Home Page
    Hover On The First Item In The List
    Click Add To Cart Button

Go To Home Page
    Click Element       ${INDEX_LOCATOR}
    Page Should Contain Element    ${INDEX_VALIDATOR}

Hover On The First Item In The List
    Mouse Over      ${FIRST_ITEM_LOCATOR}

Click Add To Cart Button
    Click Element      ${ADD_TO_CART_BUTTON_LOCATOR}
    Page Should Contain         ${ITEM_ADDED_IN_CART_MESSAGE}

Navigate to Checkout Page
    Click On Checkout Button

Click On Checkout Button
    Click Element       ${CHECKOUT_BUTTON_LOCATOR}
    Page Should Contain Element      ${SHOPPING_CART_VALIDATOR}

Verify Summary Section
    Verify Page Contains Item
    Click On Proceed To Checkout Button For Next Page

Verify Page Contains Item
    Page Should Contain Element     ${ITEM_IN_CART_LOCATOR}

Click On Proceed To Checkout Button For Next Page
    Click Element   ${CART_NAVIGATE_NEXT_BUTTON_LOCATOR}

Select ${index} Address From The List
    Run Keyword If   '${index}' == 'First'   Select From List By Label    ${ADDRESS_DROPDOWN_LOCATOR}    ${ADDRESS_ALIAS}[0]
    ...   ELSE   Select From List By Label    ${ADDRESS_DROPDOWN_LOCATOR}    ${ADDRESS_ALIAS}[1]
    Click On Proceed To Checkout Button For Next Page

Verify User should Not Proceed Without Accepting
    Click On Proceed To Checkout Button For Next Page
    Verify The Terms of Service Popup Alert

Accept Terms of Services And Proceed
    Select Checkbox     ${TERMS_SERVICE_ALERT_CHECKBOX_LOCATOR}
    Click On Proceed To Checkout Button For Next Page

Verify The Terms of Service Popup Alert
    Page Should Contain Element     ${TERMS_SERVICE_ALERT_LOCATOR}
    Click Element      ${TERMS_SERVICE_ALERT_CLOSE_LOCATOR}

Select ${payment_method} Method
    Run Keyword If   '${payment_method}' == 'Pay By Check'    Run Keywords   Click Element    ${PAY_BY_CHECK_LOCATOR}
    ...   AND      Wait Until Page Contains Element    ${PAY_BY_CHECK_VALIDATOR}
    ...   ELSE     Run Keywords     Click Element    ${PAY_BY_BANK_WIRE_LOCATOR}
    ...   AND      Wait Until Page Contains Element    ${PAY_BY_BANK_WIRE_VALIDATOR}

Confirm Order
    Click Element    ${CONFIRM_ORDER_BUTTON}

Verify Order Success Message
    Page Should Contain    ${ORDER_SUCCESS_MESSAGE}

Navigate To Add Address Module
    Click Element       ${ADD_NEW_ADDRESS_LOCATOR}
    Page Should Contain Element   ${ADD_NEW_ADDRESS_VALIDATOR}

Adds Another Address
    Fill Address Information
    Click Save Button

Click Save Button
    Click Element    ${SAVE_NEW_ADDRESS_LOCATOR}

Select Different Address For Both Addresses
    Uncheck Option To Select Same Delivery Address
    Select Delivery Address
    Select Billing Address
    Click On Proceed To Checkout Button For Next Page

Uncheck Option To Select Same Delivery Address
    Unselect Checkbox    ${SELECT_DIFFERENT_ADDRESS_LOCATOR}

Select ${address_type} Address
    Run Keyword If   '${address_type}' == 'Delivery'   Select From List By Label    ${ADDRESS_DROPDOWN_LOCATOR}    ${ADDRESS_ALIAS}[0]
    Run Keyword If   '${address_type}' == 'Billing'   Select From List By Label    ${BILLING_ADDRESS_DROPDOWN_LOCATOR}    ${ADDRESS_ALIAS}[1]

