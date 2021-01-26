*** Settings ***

Documentation    This file has all keywords


Resource    ../comman_functionality.resource

*** Variables ***
${MENU_LOCATOR}     id=rciHeaderOpenSidenav 
${CRUISE_SHIP_LOCATOR}    //*[contains(text(),"Cruise Ships ")]  
${CRUISE_DEALS_LOCATOR}    id=rciHeaderSideNavSubmenu-3-2 

*** Keywords ***
Click_Menu
    Click Element    ${MENU_LOCATOR}
    
Click_On_Find_Cruise_Ship
    Click Element    ${CRUISE_SHIP_LOCATOR}    
    
Click_On_Cruise_Deals
    Click Element    ${CRUISE_DEALS_LOCATOR} 