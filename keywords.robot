*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      http://localhost:3000/ecms/login
${BROWSER}  chrome

*** Keywords ***
Login to ECMS
    [Arguments]    ${email}    ${password}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_argument    --incognito
    Call Method    ${chrome options}    add_argument    --headless
    Call Method    ${chrome options}    add_argument    --disable-gpu
    Create Webdriver    Chrome    options=${chrome options}
    Go To    ${URL}
    Maximize Browser Window
    Input Text    email    ${email}
    Input Password    password    ${password}
    Click Element    submit
    Sleep    0.5s



Check Value By ID
    [Arguments]    ${id}    ${expected}
    ${value}=    SeleniumLibrary.Get Element Attribute    id=${id}    value
    Should Be Equal    ${value}    ${expected}


Open My Profile
    Wait Until Element Is Visible    id=dropdown    10s
    Click Element    id=dropdown
    Wait Until Element Is Visible    my-profile
    Click Element    id=my-profile

Capture and Close
    Sleep    1s
    Capture Page Screenshot
    Sleep    1s
    Close Browser