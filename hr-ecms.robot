*** Settings ***
Documentation    Robot Framework test suite for ECMS
Library    SeleniumLibrary
Library    XML

*** Test Cases ***
TC-HR-01 Hr login success
     Open Browser    http://localhost:3000/ecms/login    chrome
    Input Text    email    hsy
    Input Password    password    1234
    Click Element    submit

# TC-EMP-02
#     Open Browser    http://localhost:3000/ecms/login    chrome
#     Input Text    email    emp
#     Click Element    submit

# TC-EMP-03
#     Open Browser    http://localhost:3000/ecms/login    chrome
#     Input Text    email    emp
#     Input Password    password    1234
#     Click Element    submit

TC-HR-14 Open Emp
    Open Browser    http://localhost:3000/ecms/login    chrome
    Maximize Browser Window
    Input Text    email    hsy
    Input Password    password    1234
    Click Element    submit
    Sleep    3s
    Click Element    emp
    Sleep    3s
    Click Element    open-0
    Sleep    3s
