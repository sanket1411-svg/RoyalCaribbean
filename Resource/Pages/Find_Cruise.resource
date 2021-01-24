*** Settings ***

Documentation    This file has all keywords


Resource    ../comman_functionality.resource

*** Variables ***
${FIND_A_CRUISE_LOCATOR}    //*[contains(text(),"Find a Cruise ")]
${FIND_CRUISE_DEALS_LOCATOR}    xpath=(//*[contains(text(),"Cruise Deals")])[3]
${BOOK_NOW_LOCATOR}    //*[contains(text(),"BOOK NOW")]
${2_5_NIGHTS_LOCATOR}    id=filter_2to5_nights
${LOCATE_FIRST_DEALS_LOCATOR}    xpath=(//*[@id="FR02MIA-2007137263"]/*)/*
${ITERNARY_LOCATOR}    //*[contains(text()," View Itinerary Details")]
${SOURCE_LOCATOR}    xpath=((//*[@class="product-view-itinerary-overview__outline-item"])[1]/*)[2] 
${DESTINATION_LOCATOR}    xpath= ((//*[@class="product-view-itinerary-overview__outline-item"])[2]/*)[2] 

*** Keywords ***
Click_Find_a_Cruise
    Click Element    ${FIND_A_CRUISE_LOCATOR}
    
Click_Find_Cruise_Deals
    Click Element    ${FIND_CRUISE_DEALS_LOCATOR}
    
Click_on_Book_Now
    Click Element    ${BOOK_NOW_LOCATOR} 
    
Click_on_2-5Nights
    Click Element    ${2_5_NIGHTS_LOCATOR}    

Locate_First_Deal
    Scroll Element Into View    ${LOCATE_FIRST_DEALS_LOCATOR}
    
Click_On_First_Deal
    Click Element    ${LOCATE_FIRST_DEALS_LOCATOR}
    
Click_On_Iternary
    Click Element    ${ITERNARY_LOCATOR}   
    
Source_Should_Be_
    [Arguments]    ${source}
    Element Text Should Be    ${SOURCE_LOCATOR}    ${source}
    
Destination_Should_Be
    [Arguments]    ${destination}
    Element Text Should Be    ${DESTINATION_LOCATOR}    ${destination}        
    
    
    