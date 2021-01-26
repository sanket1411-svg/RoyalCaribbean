*** Settings ***

Resource    ../Resource/comman_functionality.resource
Resource    ../Resource/Pages/DashboardPage.resource
Resource    ../Resource/Pages/Choose_Deck_Plans_Page.resource
Resource    ../Resource/Pages/Choose_Deck_Size_Page.resource
Resource    ../Resource/Pages/Deck_Plans_Page.resource

Library    DataDriver    file=../Test_Data/Deck_Size.xlsx    sheet_name=TC1_validcredential    

Test Setup    Launch Browser
Test Teardown    End Browser
Test Template    TC1_validcredential


*** Test Cases ***    
TC1_${Deck_Size}

*** Keywords ***
TC1_validcredential    
    [Arguments]    ${Deck_Size}  
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
    sleep    3s
    Select_Deck_Size    ${Deck_Size} 
    #${validate}    Get Text    xpath=(//*[@class="deck-plan__dates-list"]/*)[1]
    ${validate}    Get_Available_Dates_1
    Log To Console    ${validate}          
    #${validate_1}    Get Text    xpath=(//*[@class="deck-plan__dates-list"]/*)[2]
    ${validate_1}    Get_Available_Dates_2
    Log To Console    ${validate_1}        
    Check_Royal_Suite_text
    Check_Whale_Watching_text    Does not meet my requirements
      