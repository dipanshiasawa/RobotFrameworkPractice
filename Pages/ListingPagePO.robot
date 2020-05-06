*** Settings ***
Library         SeleniumLibrary
Library         ../Utils/python_lib.py
Resource        ./Locators.robot

*** Keywords ***
Navigate to Home Page
    Click Element       ${INDEX_LOCATOR}
    Page Should Contain Element     ${INDEX_VALIDATOR}

Go To Women Tab
    Mouse Over     ${WOMEN_TAB_LOCATOR}

Select Summers Dresses Under Dresses Section
    Click Element    ${SUMMER_DRESSES_OPTION_LOCATOR}
    Page Should Contain Element    ${SUMMER_DRESSES_PAGE_VALIDATOR}

Select Filter For Size
    Click Element     ${SIZE_S_FILTER_LOCATOR}

Filtered Products Should Appear
    Wait Until Element Is Not Visible    ${LOADER_LOCATOR}    error=Loader is still appearing on the page
    Page Should Contain Element      ${PRODUCT_ITEM_LOCATOR}

Sort Product By "${sort_type}"
    Store Name and Price Before Sorting      ${sort_type}
    Run Keyword If   "${sort_type}" == "Highest Price First"    Select From List By Value   ${SORT_DROPDOWN_LOCATOR}   price:desc
    ...  ELSE IF   "${sort_type}" == "Lowest Price First"    Select From List By Value   ${SORT_DROPDOWN_LOCATOR}   price:asc
    ...  ELSE IF   "${sort_type}" == "Descending Order"    Select From List By Value   ${SORT_DROPDOWN_LOCATOR}   name:desc
    ...  ELSE IF   "${sort_type}" == "Ascending Order"    Select From List By Value   ${SORT_DROPDOWN_LOCATOR}   name:asc

Store Name and Price Before Sorting
    [Arguments]   ${sort_type}
    @{PRODUCT_NAME_LIST} =   Get Product Names
    @{PRODUCT_PRICE_LIST} =  Get Product Prices
    Set Test Variable    @{PRODUCT_NAME_LIST}
    Set Test Variable    @{PRODUCT_PRICE_LIST}
    Run Keyword If   "${sort_type}" == "Highest Price First"    Reverse List     ${PRODUCT_PRICE_LIST}
    ...  ELSE IF   "${sort_type}" == "Lowest Price First"    Sort List     ${PRODUCT_PRICE_LIST}
    ...  ELSE IF   "${sort_type}" == "Descending Order"    Reverse List     ${PRODUCT_NAME_LIST}
    ...  ELSE IF   "${sort_type}" == "Ascending Order"    Sort List     ${PRODUCT_NAME_LIST}

Get Product Names
    @{we} =   Get WebElements    ${PRODUCT_NAME_LOCATOR}
    @{Names}=  Get Text From Web Elements  ${we}
    [Return]   @{Names}

Get Product Prices
    @{we} =   Get WebElements    ${PRODUCT_PRICE_LOCATOR}
    @{Prices}=  Get Text From Web Elements  ${we}
    [Return]   @{Prices}

Sorted Products Should Appear
    Wait Until Element Is Not Visible    ${LOADER_LOCATOR}    error=Loader is still appearing on the page
    Page Should Contain Element      ${PRODUCT_ITEM_LOCATOR}
    @{PRODUCT_NAME_LIST_AFTER_SORT} =   Get Product Names
    @{PRODUCT_PRICE_LIST_AFTER_SORT} =  Get Product Prices
    Lists Should Be Equal   @{PRODUCT_NAME_LIST_AFTER_SORT}    @{PRODUCT_NAME_LIST}
    Lists Should Be Equal   @{PRODUCT_PRICE_LIST_AFTER_SORT}    @{PRODUCT_PRICE_LIST}



