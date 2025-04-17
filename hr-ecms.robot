*** Settings ***
Documentation    Robot Framework test suite for ECMS
Library    SeleniumLibrary

*** Settings ***
Resource     ./keywords.robot


*** Test Cases ***
TC-HR-01
    Login to ECMS    hsy    1234
TC-HR-02
    Open Browser    http://localhost:3000/ecms/login    edge
    Maximize Browser Window
    Input Text    email    hsy
    Click Element    submit

TC-HR-03
    Login to ECMS    hsy    admin

TC-HR-04
    Login to ECMS    hsy    1234
    Click Element    emp

TC-HR-05
    Login to ECMS    hsy    1234
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

TC-HR-06
    Login to ECMS    hsy    1234
    Click Element    emp
    Sleep    2s
    Click Button    create
    Sleep    2s
    Input Text    department    sales
    Input Text    empName    John Doe
    Input Text    email    Johndoe@test.com
    Input Text    tel    0111111111
    Click Element    submit

TC-HR-07
    Login to ECMS    hsy    1234
    Click Element    emp
    Wait Until Element Is Visible    open-0    
    Click Element    open-0
    Wait Until Element Is Visible    edit-button    
    Click Element    edit-button
    Sleep    1s
    Clear Element Text    tel
    Input Text    tel    0811111111
    Sleep    1s
    Scroll Element Into View    submit
    Wait Until Element Is Visible    submit    
    Click Element    //*[@id="submit"]

TC-HR-08
    Login to ECMS    hsy    1234
    Click Element    emp
    Wait Until Element Is Visible    open-4   
    Click Element    open-4
    Wait Until Element Is Visible    delete-button
    Click Button    delete-button
    Wait Until Element Is Visible    modal-cancel-button
    Sleep    1s
    Click Button    modal-delete-button

TC-HR-09
    Login to ECMS    hsy    1234
    Click Element    emp

TC-HR-10
    Login to ECMS    hsy    1234
    Click Element    emp
    Wait Until Element Is Visible    open-0
    Click Button    open-0
    Sleep    2s
    Check Value By ID    empId    EMP002
    Check Value By ID    department    aaa
    Check Value By ID    empName    jirawat
    Check Value By ID    cardId    emp
    Check Value By ID    email    emp
    Check Value By ID    tel    0811111111
    Check Value By ID    roles    Emp
    Check Value By ID    firstTrainingDate    2022-11-30
    Check Value By ID    expiryDate    2026-04-13
    Check Value By ID    trainingDuration    13 วัน
    Check Value By ID    nextExpiryDate    11 เดือน 28 วัน
    Element Text Should Be    courseId-0    C012
    Element Text Should Be    sessionId-0          S001
    Element Text Should Be    courseName-0         Test API	
    Element Text Should Be    trainingDate-0       2025-04-30
    Element Text Should Be    periods-0            23
    Element Text Should Be    trainingLocation-0   23

TC-HR-11
    Login to ECMS    hsy    1234
    Click Element    emp
    Wait Until Element Is Visible    all
    Click Element    all

TC-HR-12
    Login to ECMS    hsy    1234
    Click Element    emp
    Wait Until Element Is Visible    nextButton
    Click Element    nextButton

TC-HR-13
    Login to ECMS    hsy    1234
    Go To    http://localhost:3000/ecms/hr/emp/details/EMP400

TC-HR-14
    Login to ECMS    hsy    1234        
    Click Element    emp
    Wait Until Element Is Visible    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Click Element    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Sleep    0.5s
    Select From List By Value    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select    10

TC-HR-15
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw

TC-HR-16
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    all
    Click Element    all

TC-HR-17 - TC-HR-18 
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    approve-0
    Click Button    approve-0
    Wait Until Element Is Visible    modal-cancel
    Sleep    2s
    Click Element    modal-cancel
    Click Button    deny-0
    Wait Until Element Is Visible    modal-cancel
    Sleep    2s
    Click Button    modal-cancel

TC-HR-19
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Sleep    1s
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[1]    วันที่ส่งคำร้อง: 2025-03-27
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[2]    รหัสคำร้อง: WR005
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[3]    รหัสคอร์ส: Test-001
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[4]    รอบ: S006
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[1]    รหัสพนักงาน: EMP002
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[2]    ชื่อผู้อบรม: aaa
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[3]    แผนกที่สังกัด: aaa

TC-HR-20
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    approve
    Click Element    approve

TC-HR-21
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    deny
    Click Element    deny

TC-HR-22
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    approve
    Click Element    approve
    Wait Until Element Is Visible    modal-approve
    Click Element    modal-approve

TC-HR-23
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    deny
    Click Element    deny
    Wait Until Element Is Visible    modal-deny
    Click Element    modal-deny

TC-HR-24
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    deny
    Click Element    deny
    Wait Until Element Is Visible    modal-remark
    Input Text    modal-remark    ไม่อนุมัติ
    Click Element    modal-deny


TC-HR-25
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim

TC-HR-26
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    all
    Click Element    all

TC-HR-27 - TC-HR-28
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    approve-0
    Click Button    approve-0
    Wait Until Element Is Visible    modal-cancel
    Sleep    2s
    Click Element    modal-cancel
    Click Button    deny-0
    Wait Until Element Is Visible    modal-cancel
    Sleep    2s
    Click Button    modal-cancel

TC-HR-29
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Sleep    1s
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[1]    วันที่ส่งคำร้อง: 2025-04-16
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[2]    รหัสคำร้อง: R004
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[3]    รหัสคอร์ส: C006
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div[2]    1111
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[1]    รหัสพนักงาน: EMP002
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[2]    ชื่อผู้อบรม: jirawat
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[3]    แผนกที่สังกัด: aaa
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[4]    เลขประจำตัวประชาชน: 1111
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[5]    เลขที่บัญชีเงินฝากธนาคาร: 1111

TC-HR-30
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    approve
    Click Element    approve

TC-HR-31
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    deny
    Click Element    deny

TC-HR-32
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    approve
    Click Element    approve
    Wait Until Element Is Visible    modal-approve
    Click Element    modal-approve

TC-HR-33
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    deny
    Click Element    deny
    Wait Until Element Is Visible    modal-deny
    Click Element    modal-deny

TC-HR-34
    Login to ECMS    hsy    1234  
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    deny
    Click Element    deny
    Wait Until Element Is Visible    modal-remark
    Input Text    modal-remark    ไม่อนุมัติ
    Click Element    modal-deny

TC-HR-35
    Login to ECMS    hsy    1234  
    Click Element    results

TC-HR-36
    Login to ECMS    hsy    1234  
    Click Element    results
    Wait Until Element Is Visible    all
    Click Element    all

TC-HR-37
    Login to ECMS    hsy    1234  
    Click Element    results
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    # เขียน element text should be ตาม test case
TC-HR-38
    Login to ECMS    hsy    1234  
    Click Element    results
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    pass-button
    Click Button    pass-button
    Wait Until Element Is Visible    modal-pass
TC-HR-39
    Login to ECMS    hsy    1234  
    Click Element    results
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    fail-button
    Click Button    fail-button
    Wait Until Element Is Visible    modal-fail
    Click Button    modal-fail

TC-HR-40
    Login to ECMS    hsy    1234  
    Click Element    results
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    fail-button
    Click Button    fail-button
    Wait Until Element Is Visible    remark
    Input Text    remark    ไม่ผ่าน
    Click Button    modal-fail

TC-HR-41
    Login to ECMS    hsy    1234  
    Click Element    results
    Wait Until Element Is Visible    all
    Click Element    all
    Wait Until Element Is Visible    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Click Element    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Sleep    0.5s
    Select From List By Value    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select    20
    Wait Until Element Is Visible    open-4
    Click Button    open-4

TC-HR-42
    Login to ECMS    hsy    1234  
    Click Element    results
    Wait Until Element Is Visible    all
    Click Element    all
    Wait Until Element Is Visible    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Click Element    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Sleep    0.5s
    Select From List By Value    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select    20
    Wait Until Element Is Visible    open-4
    Click Button    open-5

TC-HR-43
    Login to ECMS    hsy    1234  
    Click Element    results
    Wait Until Element Is Visible    all
    Click Element    all
    Wait Until Element Is Visible    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Click Element    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Sleep    0.5s
    Select From List By Value    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select    10