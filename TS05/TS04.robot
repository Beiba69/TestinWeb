*** Settings ***
Library  SeleniumLibrary    run_on_failure=Nothing
Resource  URLs.robot
Resource  Values.robot
Resource  Buttons.robot
Resource  results.robot

*** Test Cases ***

Searching Revisins without Choosing date
    Open Browser  ${URL}  ${BROWSER}  edge
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Click Element  ${Button_FilterRevisions}
    Click Element  ${Button_Indicator}
    Click Element  ${Button_DisLinks}
    Click Element  //SPAN[@class='oo-ui-labelElement-label'][text()='Show revisions']/self::SPAN
    Wait Until Element Is Visible  //SECTION[@id='pagehistory']/self::SECTION
    Go To  ${URL}
Searching Revisions of discussiontools
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Click Element  ${Button_FilterRevisions}
    Click Element  ${Button_Indicator}
    Click Element  ${Button_Date}
    Click Element  //SPAN[@class='oo-ui-labelElement-label'][text()='Show revisions']/self::SPAN
    Wait Until Element Is Visible  //SPAN[@class='oo-ui-labelElement-label'][text()='Filter revisions']
    Go To  ${URL}
Searching Revisions of 2017
     Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Click Element  ${Button_FilterRevisions}
    Click Element  ${Button_Indicator}
    Click Element  ${Button_2017revision}
    Click Element  //SPAN[@class='oo-ui-labelElement-label'][text()='Show revisions']/self::SPAN
    Wait Until Element Is Visible  (//P)[2]
Comparison Revisions of 2017
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Click Element  //INPUT[@class='historysubmit mw-history-compareselectedversions-button mw-ui-button webfonts-changed']
    Wait Until Element Is Visible  ${Result2}
    Go To  ${URL}
Comparison Revisions 2018 and 2022
   Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
   Click Element  ${Button_2022}
   Click Element  ${Button_2018}
   Click Element  ${Button_Compare}
   Wait Until Element Is Visible  ${Result3}
   Go To  ${URL}
Post-conditions
    Close Browser