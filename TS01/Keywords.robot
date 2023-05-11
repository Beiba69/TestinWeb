*** Keywords ***
Open Rosetta
    [Arguments]  ${URL}
    Open Browser  ${URL}  edge

Verify Discord Navigation Link
    [Arguments]  ${URL_Discord}
    Click Element  link=Discord
    Sleep  2
    Location Should Be  ${URL_Discord}
    Go To  ${URL}

Verify Facebook Navigation Link
    [Arguments]  ${URL_Facebook}
    Click Element  link=Facebook
    Sleep  2
    Location Should Be  ${URL_Facebook}
    Go To  ${URL}

Verify Wiki Navigation Link
    [Arguments]  ${URL_Wiki}
    Click Element  link=Languages
    Sleep  2
    Location Should Be  ${URL_Wiki}
    Go To  ${URL}

Verify Page information Navigation Link
    [Arguments]  ${URL_PageInfo}
     Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Sleep  1s
    Click Element  link=Page information
    Sleep  2s
    Location Should Be  ${URL_PageInfo}
    Go To  ${URL}

Verify Cite this page Navigation Link
    [Arguments]  ${URL_CiteThisPage}
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight);
    Sleep    1s
    Click Element  link=Cite this page
    Sleep  2s
    Location Should Be  ${URL_CiteThisPage}




