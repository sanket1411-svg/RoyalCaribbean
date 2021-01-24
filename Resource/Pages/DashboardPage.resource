*** Settings ***

Documentation    This file has all keywords


Resource    ../comman_functionality.resource

*** Variables ***
${POPUP_START}    //div[@class="email-capture__body"]/*
${CHECK_WHALE_WATER_LINK_LOCATOR}    //*[contains(text(),"whale watching")]   
${MENU_LOCATOR}     id=rciHeaderOpenSidenav 
${CRUISE_SHIP_LOCATOR}    //*[contains(text(),"Cruise Ships ")]  
${CRUISE_DEALS_LOCATOR}    id=rciHeaderSideNavSubmenu-3-2 
${RHAPSODY_LOCATOR}    //*[contains(text(),"RHAPSODY OF THE SEAS")]        
${DECK_LOCATOR}    name=deck-dropdown    
${DECK_PLAN_DATES_LOCATOR}    xpath=(//*[@class="deck-plan__dates-list"]/*)[1]
${DECK_PLAN_DATES_LOCATOR_1}    xpath=(//*[@class="deck-plan__dates-list"]/*)[2]
${ROYAL_SUITE_LOCATOR}    //*[contains(text(),"Royal Suite")]


*** Keywords ***
Popups_In_Start
    Run Keyword And Ignore Error      Click Element    ${POPUP_START}
    
Check_Whale_Watching_link
    Run Keyword And Ignore Error    Page Should Contain Element    ${CHECK_WHALE_WATER_LINK_LOCATOR}
    
Click_Menu
    Click Element    ${MENU_LOCATOR}
    
Click_On_Find_Cruise_Ship
    Click Element    ${CRUISE_SHIP_LOCATOR}    
    
Click_On_Cruise_Deals
    Click Element    ${CRUISE_DEALS_LOCATOR}    
    
Locate_RHAPSODY_OF_THE_SEAS
    Scroll Element Into View    ${RHAPSODY_LOCATOR}
    
Click_Rhapsody
    Click Element    ${RHAPSODY_LOCATOR}
    
Select_Deck_Eight
    [Arguments]    ${deck}
    Select From List By Label    ${DECK_LOCATOR}    ${deck}    
    
Get_Available_Dates_1
    Get Text    ${DECK_PLAN_DATES_LOCATOR}
    
Print_Dates_1
    [Arguments]    ${1234}    
    Log To Console    ${1234}       
     
Get_Available_Dates_2
    Get Text    ${DECK_PLAN_DATES_LOCATOR_1}

Print_Dates_2
    [Arguments]    ${12345}
    Log To Console    ${12345}
     
Check_Royal_Suite_text
    Page Should Contain Element    ${ROYAL_SUITE_LOCATOR}   
    
Check_Whale_Watching_text
    [Arguments]    ${text}
    Page Should Contain Element    ${CHECK_WHALE_WATER_LINK_LOCATOR}    ${text}   
    

    
    
    