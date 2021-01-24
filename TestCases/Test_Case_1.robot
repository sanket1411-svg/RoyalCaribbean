*** Settings ***

Resource    ../Resource/comman_functionality.resource
Resource    ../Resource/Pages/DashboardPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser


*** Test Cases ***    
TC1_validcredential    
    Popups_In_Start 
    Check_Whale_Watching_link
    sleep    2s
    Click_Menu   
    #sleep    2s
    Click_On_Find_Cruise_Ship  
    #sleep    2s 
    Click_On_Cruise_Deals
    Locate_RHAPSODY_OF_THE_SEAS
    Click_Rhapsody    
    Select_Deck_Eight    Deck Eight
    ${validate}    Get Text    xpath=(//*[@class="deck-plan__dates-list"]/*)[1]
    #${validate}    Get_Available_Dates_1
    Log To Console    ${validate}    
    #Print_Dates_1    ${validate}    
    ${validate_1}    Get Text    xpath=(//*[@class="deck-plan__dates-list"]/*)[2]
    #${validate_1}    Get_Available_Dates_2
    Log To Console    ${validate_1}        
    #Print_Dates_2    ${validate_1}
    Check_Royal_Suite_text
    Check_Whale_Watching_text    Does not meet my requirements
      