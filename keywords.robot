*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      http://localhost:3000/ecms/login
${BROWSER}  chorme

*** Keywords ***
Login to ECMS
    [Arguments]    ${email}    ${password}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    email    ${email}
    Input Password    password    ${password}
    Click Element    submit
    Sleep    0.5s

Check Value By ID
    [Arguments]    ${id}    ${expected}
    ${value}=    SeleniumLibrary.Get Element Attribute    id=${id}    value
    Should Be Equal    ${value}    ${expected}