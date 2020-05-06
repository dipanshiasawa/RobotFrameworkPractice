*** Settings ***
Library     SeleniumLibrary
Library           String
Resource        ./Common.robot

*** Variables ***
${NEWSLETTER_LOCATOR}           //input[@id='newsletter-input']
${NEWSLETTER_SUBMIT_LOCATOR}    //button[@name='submitNewsletter']
${INVALID_EMAIL}                Test@abc
${VALID_EMAIL}

*** Keywords ***
Enter "${email_type}" Email
    Run keyword if   "${email_type}" == "Invalid"     Enter Email    ${INVALID_EMAIL}
    ...              ELSE      run keywords     Get Random Email Address    AND    Enter Email    ${VALID_EMAIL}

Enter Email
    [Arguments]  ${email}
    Input Text   ${NEWSLETTER_LOCATOR}      ${email}

Click Submit Button
    Click Element     ${NEWSLETTER_SUBMIT_LOCATOR}

Verify "${message}" on the page
    Page Should Contain     ${message}

Enter Same Email Again
    Enter Email    ${VALID_EMAIL}

