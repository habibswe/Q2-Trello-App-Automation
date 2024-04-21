*** Settings ***
Library         AppiumLibrary
Library         BuiltIn
# Resource        ../test_suites/onbording_suite.robot

*** Variables ***
${welcome_page}                     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.compose.ui.platform.ComposeView/android.view.View/android.widget.TextView[1]
${trello_logo}                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View[1]
${login_button}                     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View[3]/android.widget.Button
${singin_with_email}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TextView[1]
${add_another_account}              xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${maybe_later}                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View/android.widget.ScrollView/android.view.View[2]/android.widget.TextView
${email_box}                        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${continue}                         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.Button
${password_box}                     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText
${login}                            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.Button
${existing_email}                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]
${basic_board}                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View/android.view.View[1]/android.view.View[1]
${back}                             xpath=//android.widget.ImageButton[@content-desc="Close"]
${back_button}                      xpath=//android.widget.ImageButton[@content-desc="Navigate up"]
${syllabus}                         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/androidx.compose.ui.platform.ComposeView/android.view.View/android.view.View/android.view.View[1]/android.view.View[2]
${three_bar}                        xpath=//android.widget.ImageButton[@content-desc="Open drawer"]
${my_card}                          xpath=//android.widget.TextView[@resource-id="com.trello:id/title" and @text="My cards"]
${offline}                          xpath=//android.widget.TextView[@resource-id="com.trello:id/title" and @text="Offline boards"]
${help}                             xpath=//android.widget.TextView[@resource-id="com.trello:id/title" and @text="Help!"]
${settings}                         xpath=//android.widget.TextView[@resource-id="com.trello:id/title" and @text="Settings"]
${logout}                           xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="Log out"]



###############################################  User Variable  ##################################################################################


${emailAddress}                         habibswe.qups@gmail.com
${InputPassword}                        habib.qups.trello


*** Keywords ***
Check that Welcome page should Appear
  Wait Until Element Is Visible                       ${welcome_page} 
Check that there Trello logo should appear
  Wait Until Element Is Visible                       ${trello_logo}
tap on login button
  Click Element                                       ${login_button}

tap on sign in with email 
  Click Element                                        ${singin_with_email}   
  Sleep                                                ${20}                                                
              
enter valid email 
  Click Element                                        ${email_box}
  Input Text   ${email_box}                            ${emailAddress} 
  Sleep                                                ${10} 
  Click Element                                        ${email_box}
 tap on continue
   Click Element                                       ${continue} 
  Sleep                                                ${5}

 enter password 
   Click Element                                       ${password_box}
   Input Text   ${password_box}                        ${InputPassword}
  Sleep                                                ${5}
                                       
 tap on login
   Click Element                                       ${login} 
  Sleep                                                ${5}

tap on maybe later 
  Click Element                                        ${maybe_later} 
  Sleep                                                ${10}

tap on existing email 
  Click Element                                        ${existing_email} 
  Sleep                                                ${20}                                           
tap on basic board
  Click Element                                        ${basic_board} 
  Sleep                                                ${5}
tap on back
  Click Element                                        ${back} 
  Sleep                                                ${5}
tap on back button
  Click Element                                        ${back_button} 
  Sleep                                                ${5}

tap on syllabus
  Click Element                                        ${syllabus} 
  Sleep                                                ${5}
tap on three bar icon
  Click Element                                        ${three_bar} 
  Sleep                                                ${5}
 tap on my Card
  Click Element                                        ${my_card} 
  Sleep                                                ${10}
tap on offline boards
  Click Element                                        ${offline} 
  Sleep                                                ${10}
tap on help
  Click Element                                        ${help} 
  Sleep                                                ${15}
tap on settings
  Click Element                                        ${settings} 
  Sleep                                                ${15}
  Swipe        0       1100      0       0     2000
tap on logout
  Click Element                                        ${logout} 
  Sleep                                                ${15}






