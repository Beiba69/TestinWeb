*** Settings ***
Library  SeleniumLibrary    run_on_failure=Nothing
Resource  URLs.robot
Resource  Keywords.robot

*** Test Cases ***
Pre-conditions
    Open Rosetta  ${URL}

Verify Discord Navigation Link
    Verify Discord Navigation Link  ${URL_Discord}
Verify Facebook Navigation Link
    Verify Facebook Navigation Link  ${URL_Facebook}
Verify Wiki Navigation Link
    Verify Wiki Navigation Link  ${URL_Wiki}
Verify Page information Navigation Link
    Verify Page information Navigation Link  ${URL_PageInfo}
Verify Cite this page Navigation Link
    Verify Cite this page Navigation Link  ${URL_CiteThisPage}
Post-conditions
    Close Browser




