*** Settings ***
Library  SeleniumLibrary    run_on_failure=Nothing
Resource  URLs.robot
Resource  Values.robot
Resource  Buttons.robot


*** Test Cases ***
Create Account With everything Correct
        Open Browser  ${URL}  ${BROWSER}  edge
        Input Text    ${Button_Username}    ${name1}
        Input Text    ${Button_Password}    ${password1}
        Input Text    ${Button_Password2}    ${password1}
        Input Text    ${Button_email}    ${email1}
        Input Text    ${Button_RealName}    ${name1}
        Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
        Click Button    ${Button_CreateAcc}
        Sleep    3
        Wait Until Element Is Visible  //DIV[@class='mw-message-box-error mw-message-box'][text()='There are problems with some of your input.']
        Go To  ${URL}

Create Account With wrong Username
        Open Browser  ${URL}  ${BROWSER}  edge
        Input Text    ${Button_Username}    ${email1}
        Input Text    ${Button_Password}    ${password2}
        Input Text    ${Button_Password2}    ${password2}
        Input Text    ${Button_email}    ${email2}
        Input Text    ${Button_RealName}    ${name2}
        Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
        Click Button    ${Button_CreateAcc}
        Sleep    3
        Wait Until Element Is Visible  //DIV[@class='mw-message-box-error mw-message-box'][text()='This value is required.']
        Go To  ${URL}

Create Account With wrong Password
        Open Browser  ${URL}  ${BROWSER}  edge
        Input Text    ${Button_Username}    ${name1}
        Input Text    ${Button_Password}    ${password2}
        Input Text    ${Button_Password2}    ${password3}
        Input Text    ${Button_email}    ${email2}
        Input Text    ${Button_RealName}    ${name2}
        Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
        Click Button    ${Button_CreateAcc}
        Sleep    3
        Wait Until Element Is Visible  //DIV[@class='mw-message-box-error mw-message-box'][text()='The passwords you entered do not match.']
        Go To  ${URL}
Create Account With wrong Username Without clicking On create Button
        Open Browser  ${URL}  ${BROWSER}  edge
        Input Text    ${Button_Username}    ${name3}
        Input Text    ${Button_Password}    ${password1}
        Input Text    ${Button_Password2}    ${password1}
        Input Text    ${Button_email}    ${email1}
        Input Text    ${Button_RealName}    ${name1}
        Sleep    3
        Wait Until Element Is Visible  //DIV[@class='mw-message-box mw-message-box-warning']
        Go To  ${URL}

Create Account With wrong Password Without clicking On create Button
        Open Browser  ${URL}  ${BROWSER}  edge
        Input Text    ${Button_Username}    ${name1}
        Input Text    ${Button_Password}    ${password3}
        Input Text    ${Button_Password2}    ${password3}
        Input Text    ${Button_email}    ${email1}
        Input Text    ${Button_RealName}    ${name1}
        Sleep    3
        Wait Until Element Is Visible  //LI[text()='The password entered is in a list of very commonly used passwords. Please choose a more unique password.']
        Go To  ${URL}
Create Account With Simple Password Without clicking On create Button
        Open Browser  ${URL}  ${BROWSER}  edge
        Input Text    ${Button_Username}    ${name1}
        Input Text    ${Button_Password}    ${password4}
        Input Text    ${Button_Password2}    ${password4}
        Input Text    ${Button_email}    ${email1}
        Input Text    ${Button_RealName}    ${name1}
        Sleep    3
        Wait Until Element Is Visible  //DIV[@class='mw-message-box mw-message-box-error'][text()='The password entered is in a list of very commonly used passwords. Please choose a more unique password.']
        Go To  ${URL}
Create Account With Wrong UserName and Password Without clicking On create Button
        Open Browser  ${URL}  ${BROWSER}  edge
        Input Text    ${Button_Username}    ${name3}
        Input Text    ${Button_Password}    ${password3}
        Input Text    ${Button_Password2}    ${password1}
        Input Text    ${Button_email}    ${email1}
        Input Text    ${Button_RealName}    ${name1}
        Sleep    3
        Wait Until Element Is Visible  //DIV[@class='mw-message-box mw-message-box-warning']
        Wait Until Element Is Visible  //DIV[@class='mw-message-box mw-message-box-error']
        Go To  ${URL}
Post-conditions
    Close Browser