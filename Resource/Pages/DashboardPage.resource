*** Settings ***

Documentation    This file has all keywords


Resource    ../comman_functionality.resource

*** Variables ***
${POPUP_START}    //div[@class="email-capture__body"]/*
${CHECK_WHALE_WATER_LINK_LOCATOR}    //*[contains(text(),"whale watching")]          

${DECK_PLAN_DATES_LOCATOR}    xpath=(//*[@class="deck-plan__dates-list"]/*)[1]
${DECK_PLAN_DATES_LOCATOR_1}    xpath=(//*[@class="deck-plan__dates-list"]/*)[2]
${ROYAL_SUITE_LOCATOR}    //*[contains(text(),"Royal Suite")]


*** Keywords ***
Popups_In_Start
    Run Keyword And Ignore Error      Click Element    ${POPUP_START}
    
Check_Whale_Watching_link
    Run Keyword And Ignore Error    Page Should Contain Element    ${CHECK_WHALE_WATER_LINK_LOCATOR}
            
Get_Available_Dates_1
    ${validate}    Get Text    ${DECK_PLAN_DATES_LOCATOR}
    [Return]    ${validate}    
              
Get_Available_Dates_2
    ${validate_1}     Get Text    ${DECK_PLAN_DATES_LOCATOR_1}
    [Return]    ${validate_1}     
     
Check_Royal_Suite_text
    Page Should Contain Element    ${ROYAL_SUITE_LOCATOR}   
    
Check_Whale_Watching_text
    [Arguments]    ${text}
    Page Should Contain Element    ${CHECK_WHALE_WATER_LINK_LOCATOR}    ${text}   
    

    
    
    