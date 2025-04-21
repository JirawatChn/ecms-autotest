*** Settings ***
Documentation    Robot Framework test suite for ECMS
Library    SeleniumLibrary

*** Settings ***
Resource     ./keywords.robot

*** Test Cases ***
TC-EMP-01
    Login to ECMS    emp    admin
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
    Check Value By ID    expiryDate         2026-04-21
    Check Value By ID    nextExpiryDate     1 ปี
    Capture and Close

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
    Element Text Should Be    expiryDate   วันหมดอายุการอบรม:2026-04-21
    Sleep    2s
    Element Text Should Be    nextExpiryDate    อบรมครั้งถัดไปอีก: 1 ปี
    Sleep    2s
    Capture and Close

TC-EMP-11
    Login to ECMS    emp    admin 
    Sleep    2s
    Element Text Should Be    courseId-0           C005
    Element Text Should Be    sessionId-0          S001
    Element Text Should Be    courseName-0         Backend Programming with Node.js & Express
    Element Text Should Be    trainingDate-0       2025-04-30
    Element Text Should Be    periods-0            08:00-17:00
    Element Text Should Be    trainingLocation-0   Sripatum University
    Capture and Close

TC-EMP-19
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    2s
    Element Text Should Be    courseId-0    C005
    Element Text Should Be    sessionId-0    S001
    Element Text Should Be    courseName-0    Backend Programming with Node.js & Express
    Element Text Should Be    trainingLocation-0    Sripatum University
    Element Text Should Be    trainingDate-0    2025-04-30
    Capture and Close

TC-EMP-21
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    trainings
    Click Element    trainings
    Sleep    3s
    Click Element    open-0
    Sleep    2s
    Check Value By ID    courseId    C005
    Check Value By ID    sessionId    S001
    Check Value By ID    empId    EMP002
    Check Value By ID    courseName    Backend Programming with Node.js & Express
    Check Value By ID    trainingLocation    Sripatum University
    Check Value By ID    trainingDate    2025-04-30
    Check Value By ID    periods    08:00-17:00
    Capture and Close

TC-EMP-28
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    reimbursement
    Click Element    reimbursement
    Sleep    3s
    Element Text Should Be    reqId-0    R002
    Element Text Should Be    courseId-0    C001
    Element Text Should Be    empId-0    EMP002
    Element Text Should Be    createdAt-0    2025-04-21
    Element Text Should Be    amount-0    1234
    Element Text Should Be    status-0    รออนุมัติ
    Capture and Close

TC-EMP-32
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    reimbursement
    Click Element    reimbursement
    Sleep    3s
    Click Button    open-0
    Sleep    2s
    Check Value By ID    reqId    R002
    Check Value By ID    courseId    C001
    Check Value By ID    empId    EMP002
    Check Value By ID    empName    Khanchai
    Check Value By ID    department    saler
    Check Value By ID    createdAt    2025-04-21
    Check Value By ID    cardId    1234
    Check Value By ID    bankAccount    1234
    Check Value By ID    amount    1234
    Check Value By ID    status    pending
    Check Value By ID    approvedDate    2025-04-21
    Capture and Close

TC-EMP-34
    Login to ECMS    emp    admin
    Wait Until Element Is Visible    manage
    Click Element    manage
    Sleep    2s
    Element Text Should Be    courseId-0    C005
    Element Text Should Be    sessionId-0    S001
    Element Text Should Be    trainingDate-0    2025-04-30
    Element Text Should Be    periods-0    08:00-17:00
    Element Text Should Be    trainingLocation-0    Sripatum University
    # Element Text Should Not Be    status-0    
    Capture and Close

# TC-HR-10
#     Login to ECMS    hsy    1234
#     Wait Until Element Is Visible    emp
#     Click Element    emp
#     Wait Until Element Is Visible    open-0
#     Click Button    open-0
#     Sleep    2s
#     Check Value By ID    empId    EMP002
#     Check Value By ID    department    aaa
#     Check Value By ID    empName    jirawat
#     Check Value By ID    cardId    emp
#     Check Value By ID    email    emp
#     Check Value By ID    tel    0811111111
#     Check Value By ID    roles    Emp
#     Check Value By ID    firstTrainingDate    2022-11-30
#     Check Value By ID    expiryDate    2026-04-13
#     Check Value By ID    trainingDuration    13 วัน
#     Check Value By ID    nextExpiryDate    11 เดือน 28 วัน
#     Element Text Should Be    courseId-0    C012
#     Element Text Should Be    sessionId-0          S001
#     Element Text Should Be    courseName-0         Test API	
#     Element Text Should Be    trainingDate-0       2025-04-30
#     Element Text Should Be    periods-0            23
#     Element Text Should Be    trainingLocation-0   23
#     Capture and Close

TC-HR-10
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    emp
    Click Element    emp
    Wait Until Element Is Visible    open-1
    Click Button    open-1
    Sleep    2s
    Check Value By ID    empId    EMP002
    Check Value By ID    department    saler
    Check Value By ID    empName    Khanchai
    Check Value By ID    cardId    100000000000
    Check Value By ID    email    Khanchai.pat@spumail.net
    Check Value By ID    tel    0811111111
    Check Value By ID    roles    Emp
    Check Value By ID    firstTrainingDate    2025-04-18
    Check Value By ID    expiryDate    2026-04-21
    Check Value By ID    trainingDuration    วันนี้
    Check Value By ID    nextExpiryDate    1 ปี
    Element Text Should Be    courseId-0    C005
    Element Text Should Be    sessionId-0          S001
    Element Text Should Be    courseName-0         Backend Programming with Node.js & Express	
    Element Text Should Be    trainingDate-0       2025-04-30
    Element Text Should Be    periods-0            08:00-17:00
    Element Text Should Be    trainingLocation-0   Sripatum University
    Capture and Close

TC-HR-12
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    emp
    Click Element    emp
    Wait Until Element Is Visible    nextButton
    Click Element    nextButton
    Capture and Close

TC-HR-17
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    requests
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
    Capture and Close

TC-HR-18 
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    deny-0
    Click Button    deny-0
    Wait Until Element Is Visible    modal-cancel
    Sleep    2s
    Click Button    modal-cancel
    Capture and Close

TC-HR-20
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    approve
    Click Element    approve
    Capture and Close

TC-HR-21
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    deny
    Click Element    deny
    Capture and Close

TC-HR-22
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    approve
    Click Element    approve
    Wait Until Element Is Visible    modal-approve
    Click Element    modal-approve
    Capture and Close

TC-HR-23
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    withdraw
    Click Element    withdraw
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    deny
    Click Element    deny
    Wait Until Element Is Visible    modal-deny
    Click Element    modal-deny
    Capture and Close

TC-HR-24
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
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
    Capture and Close

TC-HR-29
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Sleep    1s
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[1]    วันที่ส่งคำร้อง: 2025-04-21
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[2]    รหัสคำร้อง: R002
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[3]    รหัสคอร์ส: C001
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div[2]    1234
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[1]    รหัสพนักงาน: EMP002
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[2]    ชื่อผู้อบรม: Khanchai
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[3]    แผนกที่สังกัด: saler
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[4]    เลขประจำตัวประชาชน: 1234
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[5]    เลขที่บัญชีเงินฝากธนาคาร: 1234
    Capture and Close

TC-HR-37
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Sleep    1s
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[1]/p[1]    วันที่ส่งคำร้อง: 2025-04-21
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[1]/p[2]   รหัส: R7-S001-EMP002
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[1]/p[3]     รหัสคอร์ส: C010
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[1]/p[4]    ชื่อคอร์ส: Financial Data Analysis with Python & APIs
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[1]/p[5]    รอบ: S001
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[2]/p[1]    วันที่อบรม: 2025-04-22
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[2]/p[2]    เวลาอบรม: 08:00-17:00
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[2]/p[3]    สถานที่อบรม: Sripatum University
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[1]    รหัสพนักงาน: EMP002
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[2]    ชื่อผู้อบรม: Khanchai
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[3]    แผนกที่สังกัด: saler
    Capture and Close

TC-HR-54
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Wait Until Element Is Visible    all
    Click Element    all
    Capture and Close

TC-HR-60
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Click Element    ongoing
    Wait Until Element Is Visible    complete-0
    Click Button    complete-0
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div/div/div[2]/button[1]
    Click Button    xpath=/html/body/div[3]/div/div/div[2]/button[1]
    Capture and Close

TC-HR-61
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Wait Until Element Is Visible    detail-0
    Click Button    detail-0
    Sleep    1s
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/p[1]    รหัสคอร์ส: C002
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/p[2]    ชื่อคอร์ส: Financial Modeling with Excel
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[1]    รอบ: S001
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[2]    จำนวนที่นั่ง: 10
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[3]    จำนวนชั่วโมงอบรม: 8
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[4]    เวลาอบรม: 08:00-17:00
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[5]    สถานที่อบรม: Sripatum University
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[6]    วันที่อบรม: 2025-04-25
    Capture and Close

TC-HR-67
    Open Browser    http://localhost:3000/ecms/hr/dashboard    edge
    Capture and Close