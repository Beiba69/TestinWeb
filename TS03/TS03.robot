*** Settings ***
Library  SeleniumLibrary    run_on_failure=Nothing
Resource  URLs.robot
Resource  Values.robot
Resource  Buttons.robot



*** Test Cases ***

Checking checbox Functionality
        Open Browser  ${URL}  ${BROWSER}  edge
        Click Element  ${Button_Checkbox}
        Sleep    1
        Wait Until Element Is Visible   (//P)[1]
        Go To  ${URL}
Checking Login Button Functionality
        Click Element  ${Button_Checkbox}
        Sleep    1
        Click Element  ${Button_Login}
        Wait Until Element Is Visible   //BUTTON[@id='wpLoginAttempt']
        Go To  ${URL}
Try to login with wrong Username
       Open Browser  ${URL_Login}  ${BROWSER}  edge
       Input Text    ${Button_username}    ${name3}
       Input Text    ${Button_Password}    ${password2}
       Sleep    2
       Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
       Click Button    //BUTTON[@id='wpLoginAttempt']
       Sleep    4
       Wait Until Element Is Visible   //LABEL[@for='wpRemember'][text()='Keep me logged in']
        Execute JavaScript  window.scrollTo(0, 0);
       Go To  ${URL_login}
Try to login with wrong Password
       Input Text    ${Button_username}    ${name1}
       Input Text    ${Button_Password}    ${name3}
       Sleep    2
       Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
       Click Button    //BUTTON[@id='wpLoginAttempt']
       Sleep    4
       Execute JavaScript  window.scrollTo(0, 0);
       Wait Until Element Is Visible   //LABEL[@for='wpRemember'][text()='Keep me logged in']
Checking learn more link Functionality
       Open Browser  ${URL}  ${BROWSER}  edge
       Click Element  ${Button_Checkbox}
       Sleep    1
       Click Element  ${Button_LearnMore}
       Wait Until Element Is Visible  //A[@rel='nofollow'][text()='create this page']
       Go To  ${URL_LearnMore}
Checking Talk link Functionality
      Click Element  ${Button_Checkbox}
       Sleep    1
       Click Element  ${Button_Talk}
       Wait Until Element Is Visible  //SPAN[@class='mw-page-title-namespace'][text()='User talk']
       Go To  ${URL}
Checking Dark mode link Functionality
      Click Element  ${Button_Checkbox}
       Sleep    1
       Click Element  ${Button_Dark}

       Click Element  ${Button_Checkbox}
       Sleep    2
       Wait Until Element Is Visible  (//SPAN)[13]
       Go To  ${URL}
Checking Contributions link Functionality
      Click Element  ${Button_Checkbox}
       Sleep    1
       Click Element  ${Button_Contributions}
       Wait Until Element Is Visible  //SPAN[@class='oo-ui-labelElement-label'][text()='Search for contributions']/self::SPAN
       Go To  ${URL}
Post-conditions
    Close Browser




