*** Settings ***
Library    AppiumLibrary
Library    Process

*** Variables ***
${SCREEN_WIDTH}    1080
${SCREEN_HEIGHT}   1920
${SWIPE_INTERVAL}  2  # seconds

*** Keywords ***
Open app
    Open Application         http://127.0.0.1:4723/wd/hub
    ...                      platformName=Android
    ...                      platformVersion=13
    ...                      deviceName=Pixel
    ...                      udid=emulator-5554
    # ...                      app=C:\\Users\\Lenovo\\Desktop\\Trello Application\\Trello_ Manage Team Projects_2024.6.3.18626_Apkpure.apk
    # Optionally, specify appPackage and appActivity if needed
    ...                     appPackage=com.trello
    ...                     appActivity=com.trello.home.HomeActivity

Close app
    Close Application
