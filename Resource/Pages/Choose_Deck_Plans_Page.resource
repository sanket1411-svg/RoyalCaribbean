*** Settings ***

Documentation    This file has all keywords


Resource    ../comman_functionality.resource

*** Variables ***
${RHAPSODY_LOCATOR}    //*[contains(text(),"RHAPSODY OF THE SEAS")] 

*** Keywords ***
Locate_RHAPSODY_OF_THE_SEAS
    Scroll Element Into View    ${RHAPSODY_LOCATOR}
    
Click_Rhapsody
    Click Element    ${RHAPSODY_LOCATOR}