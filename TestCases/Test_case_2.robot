*** Settings ***

Resource    ../Resource/comman_functionality.resource
Resource    ../Resource/Pages/DashboardPage.resource
Resource    ../Resource/Pages/Find_Cruise.resource

Test Setup    Launch Browser
Test Teardown    End Browser
          

*** Test Cases ***
TC1_validcredential
    Popups_In_Start 
    sleep    2s
    Click_Menu  
    #sleep    2s
    Click_Find_a_Cruise    
    #sleep    2s 
    Click_Find_Cruise_Deals
    Click_on_Book_Now   
    Click_on_2-5Nights   
    sleep    5s
    Locate_First_Deal
    Click_On_First_Deal
    Click_On_Iternary    
    Source_Should_Be_    Miami, Florida  
    Destination_Should_Be    Freedom of the Seas    
    
    