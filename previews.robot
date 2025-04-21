*** Settings ***
Documentation    Robot Framework test suite for ECMS
Library    SeleniumLibrary

*** Settings ***
Resource     ./keywords.robot

*** Test Cases ***
TC-EMP-12
    Login to ECMS    emp    admin
    Sleep    2s
    Wait Until Element Is Visible    course
    Click Element    course
    Capture and Close

TC-EMP-18
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Capture and Close

TC-EMP-22
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    3s
    Click Element    history
    Capture and Close

TC-EMP-27
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    reimbursement
    Click Element    reimbursement
    Sleep    3s
    Capture and Close

TC-EMP-29
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    reimbursement
    Click Element    reimbursement
    Sleep    3s
    Click Button    request
    Capture and Close

TC-EMP-33
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    manage
    Click Element    manage
    Capture and Close

TC-HR-04
    Login to ECMS    hsy    1234
    Click Element    emp
    Capture and Close

TC-HR-05
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    emp
    Click Element    emp
    Wait Until Element Is Visible    //*[@id="content-wrapper"]/div[2]/div/div/div[1]    
    Click Button    create
    Wait Until Element Is Visible  //*[@id="content-wrapper"]/div[2]/div/div/div[1]    
    Input Text    department    sales
    Input Text    empName    John Doe
    Input Text    cardId    123456
    Input Text    email    Johndoe@test.com
    Input Text    tel    0111111111
    Click Element    submit
    Capture and Close

TC-HR-15
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Capture and Close

TC-HR-16
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    all
    Click Element    all
    Capture and Close

TC-HR-25
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Capture and Close

TC-HR-35
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Capture and Close

TC-HR-52
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Capture and Close

TC-HR-53
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Click Element    ongoing
    Capture and Close