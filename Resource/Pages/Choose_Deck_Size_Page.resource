*** Settings ***

Documentation    This file has all keywords


Resource    ../comman_functionality.resource

*** Variables ***
${DECK_LOCATOR}    name=deck-dropdown    

*** Keywords ***
Select_Deck_Size
    [Arguments]    ${deck}
    Select From List By Label    ${DECK_LOCATOR}    ${deck}    