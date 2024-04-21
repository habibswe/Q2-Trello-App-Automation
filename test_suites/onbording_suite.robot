*** Settings ***
Documentation     Onbording Module Test Case
Library           AppiumLibrary
Resource         ../Environment/AppSetup.robot
Resource         ../pages/onbording_page.robot






***Test Cases***    
#TC_1
Scenario: Verify that Welcome page loads perfectly
    [Tags]    passed   
    Open app
     Check that Welcome page should Appear
     Check that there Trello logo should appear

#TC_2 for first time log in only
Scenario: Verify that user should able to signup with valid email and password
    [Tags]    passed
    Open app
     Check that Welcome page should Appear
     tap on login button
     tap on sign in with email
     enter valid email
     tap on continue
     enter password
     tap on login
     tap on maybe later

# for every eatch time log in 
scenario: Verify that user should be able to signup with given Email
    [Tags]    passed
    Open app
     Check that Welcome page should Appear
     tap on login button
     tap on sign in with email
     tap on existing email
    
#TC_3
scenario: Verify that user should be able to signup with given Email
    [Tags]    passed
    Open app
     Check that Welcome page should Appear
     tap on login button
     tap on sign in with email
     tap on existing email
     tap on maybe later

#TC_4
scenario: Verify that user should be able to create browswe template
    [Tags]    passed
    Open app
     Check that Welcome page should Appear
     tap on login button
     tap on sign in with email
     tap on existing email
     tap on maybe later
     tap on basic board
     tap on back
     tap on syllabus
     tap on back
     tap on three bar icon
     tap on my Card
     tap on back button
     tap on offline boards
     tap on back button
     tap on help
     tap on back
     tap on three bar icon
     tap on settings
     tap on logout

    



