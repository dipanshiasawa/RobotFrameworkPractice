*** Settings ***
Library     SeleniumLibrary
Resource    ./Locators.robot

*** Variables ***
${HEADER_LOCATOR}       //div[@class="header-container"]
${FOOTER_LOCATOR}       //div[@class="footer-container"]


*** Keywords ***
Verify Header and Footer
    Page Should Contain Element     ${HEADER_LOCATOR}
    Page Should Contain Element     ${FOOTER_LOCATOR}

Navigate to the "${PAGE}"
    Click Element      ${ ${PAGE} LOCATOR}
    Page Should Contain Element     ${ ${PAGE} VALIDATOR}
