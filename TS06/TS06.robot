*** Settings ***
Library  SeleniumLibrary    run_on_failure=Nothing
Resource  URLs.robot
Resource  Values.robot
Resource  Buttons.robot
Resource  results.robot

*** Test Cases ***

Search function Ability with wrong Data
    Open Browser  ${URL}  ${BROWSER}  edge
    Input Text    ${Button_Search}   ${Result3}
    Click element  ${Button_Search1}
    Wait Until Element Is Visible  ${Result4}
    Go To  ${URL}

Search function Ability with Correct Data without clicking button
    Input Text    ${Button_Search}  Complete list of Wikimedia projects
    Location Should Be  ${URL}
    Go To  ${URL}
Search function Ability with Correct Data with clicking button
    Input Text    ${Button_Search}   Complete list of Wikimedia projects
    Click element  ${Button_Search1}
    Wait Until Element Is Visible  ${Result6}
    Go To  ${URL}
Search function Ability with just Numbers Data with clicking button
    Input Text    ${Button_Search}   1236
    Click element  ${Button_Search1}
    Wait Until Element Is Visible  ${Result7}
    Go To  ${URL}
Search function Ability with just Name with clicking button
    Input Text    ${Button_Search}   Beibarys
    Click element  ${Button_Search1}
    Wait Until Element Is Visible  ${Result8}
    Go To  ${URL}
Post-conditions
    Close Browser