*** Settings ***
Library  SeleniumLibrary    run_on_failure=Nothing
Resource  URLs.robot
Resource  Values.robot
Resource  Buttons.robot
Resource  results.robot

*** Test Cases ***

Checking Shortcut Function
    Open Browser  ${URL}  ${BROWSER}  edge
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Click Element  //BDI[@lang='en'][text()=' Shortcut']
    Sleep    4
    Wait Until Element Is Visible  //B[text()='Shortcuts']
    Go To  ${URL}

Changing Language Function
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Click Element  ${Button_language1}
    Sleep    1
    Wait Until Element Is Visible  ${Result1}
    Go To  ${URL}
Changing Language to Deustch

    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Click Element  ${Button_language3}
    Sleep    1
    Wait Until Element Is Visible  ${Result3}
    Go To  ${URL}

Changing Language to Bahasa Indonesia

    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Click Element  ${Button_language2}
    Sleep    1
    Wait Until Element Is Visible  ${Result2}
    Go To  ${URL}
Checking View History page
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Click Element  ${Button_ViewHistory}
    Sleep    1
    Wait Until Element Is Visible  ${Result4}
Try to compare selected revisions
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Click Element  ${Button_CompareRevisions}
    Sleep    1
    Wait Until Element Is Visible  (//DIV)[75]
    Go To  ${URL_ViewHistory}
Post-conditions
    Close Browser