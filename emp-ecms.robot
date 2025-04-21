*** Settings ***
Documentation    Robot Framework test suite for ECMS
Library    SeleniumLibrary

*** Settings ***
Resource     ./keywords.robot

*** Test Cases ***
TC-EMP-01
    Login to ECMS    emp    admin
    Capture and Close
TC-EMP-02
    Open Browser    http://localhost:3000/ecms/login    chrome
    Maximize Browser Window
    Input Text    email    emp
    Click Element    submit
    Capture and Close

TC-EMP-03
    Login to ECMS    emp    1234
    Capture and Close

TC-EMP-04
    Login to ECMS    emp    admin
    Sleep    3s
    Wait Until Element Is Visible    details
    Sleep    3s
    Click Element    details
    Sleep    3s
    Capture and Close

TC-EMP-05
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    details
    Click Element    details
    Sleep    2s
    Check Value By ID    empId              EMP002
    Check Value By ID    empName            Khanchai
    Check Value By ID    department         saler
    Check Value By ID    email              Khanchai.pat@spumail.net
    Check Value By ID    tel                0811111111
    Check Value By ID    cardId             100000000000
    Check Value By ID    firstTrainingDate  2025-04-18
    Check Value By ID    expiryDate         2026-04-13
    Check Value By ID    nextExpiryDate     11 เดือน 25 วัน
    Capture and Close

TC-EMP-06
    Open Browser    http://localhost:3000/ecms/emp/details    chrome
    Capture and Close

TC-EMP-07
    Login to ECMS    emp    admin
    Click Element    logout
    Capture and Close

# TC-EMP-08 - TC-EMP-11
#     Login to ECMS    emp    admin
#     Wait Until Element Is Visible    empId
#     Element Text Should Be    empId   ID: EMP002
#     Element Text Should Be    empName   jirawat
#     Element Text Should Be    department    แผนก: aaa
#     Element Text Should Be    tel    หมายเลขโทรศัพท์: 0811111111
#     Element Text Should Be    email    อีเมล: emp
#     Element Text Should Be    firstTrainingDate       วันที่อบรมครั้งแรก:2022-11-30
#     Element Text Should Be    expiryDate   วันหมดอายุการอบรม:2026-04-13
#     Element Text Should Be    nextExpiryDate    อบรมครั้งถัดไปอีก: 11 เดือน 28 วัน
#     Element Text Should Be    courseId       รหัสคอร์ส: Test-001
#     Element Text Should Be    courseName   ชื่อคอร์ส: test
#     Element Text Should Be    trainingDate    วันที่อบรมสำเร็จ:2025-04-03
#     Element Text Should Be    result    กำลังตรวจสอบ
#     Element Text Should Be    courseId-0           C012
#     Element Text Should Be    sessionId-0          S001
#     Element Text Should Be    courseName-0         Test API	
#     Element Text Should Be    trainingDate-0       2025-04-30
#     Element Text Should Be    periods-0            23
#     Element Text Should Be    trainingLocation-0   23
#     Capture and Close

TC-EMP-08
    Login to ECMS    emp    admin
    Element Text Should Be    empId   ID: EMP002
    Element Text Should Be    empName   Khanchai
    Element Text Should Be    department    แผนก: saler
    Element Text Should Be    tel    หมายเลขโทรศัพท์: 0811111111
    Element Text Should Be    email    อีเมล: Khanchai.pat@spumail.net
    Sleep    3s
    Capture and Close

TC-EMP-09
    Login to ECMS    emp    admin
    Sleep    2s
    Element Text Should Be    firstTrainingDate       วันที่อบรมครั้งแรก:2025-04-18
    Sleep    2s
    Element Text Should Be    expiryDate   วันหมดอายุการอบรม:2026-04-13
    Sleep    2s
    Element Text Should Be    nextExpiryDate    อบรมครั้งถัดไปอีก: 11 เดือน 25 วัน
    Sleep    2s
    Capture and Close

TC-EMP-10
    Login to ECMS    emp    admin
    Sleep    2s
    Element Text Should Be    courseId       รหัสคอร์ส: C012
    Element Text Should Be    courseName   ชื่อคอร์ส: Test API
    Element Text Should Be    trainingDate    วันที่อบรมสำเร็จ:2025-04-30
    Element Text Should Be    result    ไม่ผ่าน
    Capture and Close

TC-EMP-11
    Login to ECMS    emp    admin 
    Sleep    2s
    Element Text Should Be    courseId-0           C012
    Element Text Should Be    sessionId-0          S001
    Element Text Should Be    courseName-0         Test API	
    Element Text Should Be    trainingDate-0       2025-04-30
    Element Text Should Be    periods-0            23
    Element Text Should Be    trainingLocation-0   23
    Capture and Close

TC-EMP-12
    Login to ECMS    emp    admin
    Sleep    2s
    Wait Until Element Is Visible    course
    Click Element    course
    Capture and Close

TC-EMP-13
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    course
    Click Element    course
    Sleep    3s
    Click Element    open-0
    Sleep    3s
    Click Element    select-1
    Sleep    3s
    Click Element    register
    Capture and Close

TC-EMP-14
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    course
    Click Element    course
    Sleep    3s
    Click Element    open-0
    Sleep    3s
    Click Element    register
    Capture and Close

TC-EMP-15
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    course
    Click Element    course
    Sleep    3s
    Click Element    open-0
    Sleep    3s
    Click Element    select-0
    Sleep    3s
    Click Element    register
    Capture and Close

TC-EMP-16
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    course
    Click Element    course
    Sleep    3s
    Click Element    open-0
    Capture and Close

TC-EMP-17
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    course
    Click Element    course
    Sleep    3s
    Click Element    add-remove
    Capture and Close

TC-EMP-18
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Capture and Close

TC-EMP-19
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    2s
    Element Text Should Be    courseId-0    C012
    Element Text Should Be    sessionId-0    S001
    Element Text Should Be    courseName-0    Test API
    Element Text Should Be    trainingLocation-0    23
    Element Text Should Be    trainingDate-0    2025-04-30
    Capture and Close

TC-EMP-20
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    3s
    Click Element    open-0
    Capture and Close

TC-EMP-21
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    3s
    Click Element    open-0
    Sleep    2s
    Check Value By ID    courseId    C012
    Check Value By ID    sessionId    S001
    Check Value By ID    empId    EMP002
    Check Value By ID    courseName    Test API
    Check Value By ID    trainingLocation    23
    Check Value By ID    trainingDate    2025-04-30
    Check Value By ID    periods    23
    Capture and Close
    
TC-EMP-22
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    3s
    Click Element    history
    Capture and Close

TC-EMP-23
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    3s
    Click Element    history
    Element Text Should Be    reqId-0    R0-S004-EMP002
    Element Text Should Be    courseId-0    C002
    Element Text Should Be    sessionId-0    S004
    Element Text Should Be    courseName-0    Fundamental 2
    Element Text Should Be    trainingDate-0    2025-03-27
    Element Text Should Be    status-0    ไม่ผ่าน
    Capture and Close

TC-EMP-24
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    3s
    Click Element    history
    Click Button    open-0
    Capture and Close

TC-EMP-25
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    3s
    Click Element    history
    Click Button    open-0
    Sleep    2s
    Check Value By ID    reqId    R0-S004-EMP002
    Check Value By ID    courseId    C002
    Check Value By ID    sessionId    S004
    Check Value By ID    empId    EMP002
    Check Value By ID    courseName    Fundamental 2
    Check Value By ID    trainingLocation    SPU Bangkhen Bangkok
    Check Value By ID    trainingDate    2025-03-27
    Check Value By ID    periods    9.00 - 10.00
    Check Value By ID    status    fail
    Check Value By ID    approvedDate    2025-03-27
    Capture and Close

TC-EMP-26
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    3s
    Click Element    history
    Click Button    open-0
    Sleep    2s
    Element Should Be Disabled    reqId
    Capture and Close

TC-EMP-27
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    reimbursement
    Click Element    reimbursement
    Sleep    3s
    Capture and Close

TC-EMP-28
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    reimbursement
    Click Element    reimbursement
    Sleep    3s
    Element Text Should Be    reqId-4    R001
    Element Text Should Be    courseId-4    C001
    Element Text Should Be    empId-4    EMP002
    Element Text Should Be    createdAt-4    2024-11-30
    Element Text Should Be    amount-4    1999
    Element Text Should Be    status-4    ไม่อนุมัติ
    Capture and Close

TC-EMP-29
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    reimbursement
    Click Element    reimbursement
    Sleep    3s
    Click Button    request
    Capture and Close

TC-EMP-30
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    reimbursement
    Click Element    reimbursement
    Sleep    3s
    Click Button    request
    Sleep    2s
    Input Text    cardId    1111
    Input Text    bankAccount    1111
    Input Text    amount    1111
    Click Element    submit
    Capture and Close

TC-EMP-31
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    reimbursement
    Click Element    reimbursement
    Sleep    3s
    Click Button    request
    Sleep    2s
    Click Element    submit
    Capture and Close

TC-EMP-32
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    reimbursement
    Click Element    reimbursement
    Sleep    3s
    Click Button    open-4
    Sleep    2s
    Check Value By ID    reqId    R001
    Check Value By ID    courseId    C001
    Check Value By ID    empId    EMP002
    Check Value By ID    empName    jirawat
    Check Value By ID    department    aaa
    Check Value By ID    createdAt    2024-11-30
    Check Value By ID    cardId    10000
    Check Value By ID    bankAccount    123455
    Check Value By ID    amount    1999
    Check Value By ID    status    denied
    Check Value By ID    approvedDate    2024-11-30
    Capture and Close

TC-EMP-33
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    manage
    Click Element    manage
    Capture and Close

TC-EMP-34
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    manage
    Click Element    manage
    Sleep    2s
    Element Text Should Be    courseId-0    C012
    Element Text Should Be    sessionId-0    S001
    Element Text Should Be    trainingDate-0    2025-04-30
    Element Text Should Be    periods-0    23
    Element Text Should Be    trainingLocation-0    23
    Element Text Should Not Be    status-0    รอยืนยันการถอน
    Capture and Close

TC-EMP-35 - TC-EMP-36
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    manage
    Click Element    manage
    Sleep    2s
    Click Button    delete-0
    Sleep    1s
    Click Button    cancel
    Capture and Close

TC-EMP-37
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    manage
    Click Element    manage
    Sleep    2s
    Click Button    delete-0
    Sleep    1s
    Click Button    confirm
    Capture and Close

TC-EMP-38
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    manage
    Click Element    manage
    Sleep    2s
    Click Button    add-course
    Capture and Close

TC-EMP-39
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    manage
    Click Element    manage
    Sleep    2s
    Capture and Close
    