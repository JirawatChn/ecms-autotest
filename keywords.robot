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


Open InPrivate Edge Browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].EdgeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --inprivate
    Create Webdriver    Edge    options=${options}

Open My Profile
    Wait Until Element Is Visible    id=dropdown    10s
    Click Element    id=dropdown
    Sleep    5s
    Click Element    id=my-profile

Open Logout
    Wait Until Element Is Visible    id=dropdown    10s
    Click Element    id=dropdown
    Sleep    5s
    Click Element    id=logout
