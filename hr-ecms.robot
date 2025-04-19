*** Settings ***
Documentation    Robot Framework test suite for ECMS
Library    SeleniumLibrary
Library    DateTime

*** Settings ***
Resource     ./keywords.robot

*** Variables ***
${EMPTY}

*** Test Cases ***
TC-HR-01
    Login to ECMS    hsy    1234
    Capture and Close
TC-HR-02
    Open Browser    http://localhost:3000/ecms/login    edge
    Maximize Browser Window
    Input Text    email    hsy
    Click Element    submit
    Capture and Close

TC-HR-03
    Login to ECMS    hsy    admin
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

TC-HR-06
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    emp
    Click Element    emp
    Sleep    2s
    Click Button    create
    Sleep    2s
    Input Text    department    sales
    Input Text    empName    John Doe
    Input Text    email    Johndoe@test.com
    Input Text    tel    0111111111
    Click Element    submit
    Capture and Close

TC-HR-07
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    emp
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
    Capture and Close

TC-HR-08
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    emp
    Click Element    emp
    Wait Until Element Is Visible    open-4   
    Click Element    open-4
    Wait Until Element Is Visible    delete-button
    Click Button    delete-button
    Wait Until Element Is Visible    modal-cancel-button
    Sleep    1s
    Click Button    modal-delete-button
    Capture and Close

TC-HR-09
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    emp
    Click Element    emp
    Capture and Close

TC-HR-10
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    emp
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
    Capture and Close

TC-HR-11
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    emp
    Click Element    emp
    Wait Until Element Is Visible    all
    Click Element    all
    Capture and Close

TC-HR-12
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    emp
    Click Element    emp
    Wait Until Element Is Visible    nextButton
    Click Element    nextButton
    Capture and Close

TC-HR-13
    Login to ECMS    hsy    1234
    Go To    http://localhost:3000/ecms/hr/emp/details/EMP400
    Capture and Close

TC-HR-14
    Login to ECMS    hsy    1234        
    Wait Until Element Is Visible    emp
    Click Element    emp
    Wait Until Element Is Visible    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Click Element    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Sleep    0.5s
    Select From List By Value    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select    10
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

TC-HR-19
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
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


TC-HR-25
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Capture and Close

TC-HR-26
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    all
    Click Element    all
    Capture and Close

TC-HR-27 - TC-HR-28
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
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
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[1]    วันที่ส่งคำร้อง: 2025-04-16
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[2]    รหัสคำร้อง: R004
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/p[3]    รหัสคอร์ส: C006
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div[2]    1111
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[1]    รหัสพนักงาน: EMP002
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[2]    ชื่อผู้อบรม: jirawat
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[3]    แผนกที่สังกัด: aaa
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[4]    เลขประจำตัวประชาชน: 1111
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[5]    เลขที่บัญชีเงินฝากธนาคาร: 1111
    Capture and Close

TC-HR-30
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    approve
    Click Element    approve
    Capture and Close

TC-HR-31
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    deny
    Click Element    deny
    Capture and Close

TC-HR-32
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    approve
    Click Element    approve
    Wait Until Element Is Visible    modal-approve
    Click Element    modal-approve
    Capture and Close

TC-HR-33
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
    Click Element    requests
    Wait Until Element Is Visible    reim
    Click Element    reim
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    deny
    Click Element    deny
    Wait Until Element Is Visible    modal-deny
    Click Element    modal-deny
    Capture and Close

TC-HR-34
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    requests
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
    Capture and Close

TC-HR-35
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Capture and Close

TC-HR-36
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Wait Until Element Is Visible    all
    Click Element    all
    Capture and Close

TC-HR-37
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Sleep    1s
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[1]/p[1]    วันที่ส่งคำร้อง: 2025-03-28
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[1]/p[2]   รหัส: R2-S006-EMP002
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[1]/p[3]     รหัสคอร์ส: Test-001
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[1]/p[4]    ชื่อคอร์ส: test
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[1]/p[5]    รอบ: S006
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[2]/p[1]    วันที่อบรม: 2025-04-03
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[2]/p[2]    เวลาอบรม: 123
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[1]/div/div/div/div[2]/p[3]    สถานที่อบรม: 123
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[1]    รหัสพนักงาน: EMP002
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[2]    ชื่อผู้อบรม: aaa
    Element Text Should Be    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div[2]/div/div/p[3]    แผนกที่สังกัด: aaa
    Capture and Close
    
TC-HR-38
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    pass-button
    Click Button    pass-button
    Wait Until Element Is Visible    modal-pass
    Capture and Close

TC-HR-39
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    fail-button
    Click Button    fail-button
    Wait Until Element Is Visible    modal-fail
    Click Button    modal-fail
    Capture and Close


TC-HR-40
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Wait Until Element Is Visible    open-0
    Click Element    open-0
    Wait Until Element Is Visible    fail-button
    Click Button    fail-button
    Wait Until Element Is Visible    remark
    Input Text    remark    ไม่ผ่าน
    Click Button    modal-fail
    Capture and Close

TC-HR-41
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Wait Until Element Is Visible    all
    Click Element    all
    Wait Until Element Is Visible    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Click Element    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Sleep    0.5s
    Select From List By Value    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select    20
    Wait Until Element Is Visible    open-4
    Click Button    open-4
    Capture and Close

TC-HR-42
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Wait Until Element Is Visible    all
    Click Element    all
    Wait Until Element Is Visible    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Click Element    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Sleep    0.5s
    Select From List By Value    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select    20
    Wait Until Element Is Visible    open-4
    Click Button    open-5
    Capture and Close

TC-HR-43
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    results
    Click Element    results
    Wait Until Element Is Visible    all
    Click Element    all
    Wait Until Element Is Visible    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Click Element    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select
    Sleep    0.5s
    Select From List By Value    xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[3]/div[2]/select    10
    Capture and Close

TC-HR-44
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-course
    Click Element    create-course
    Wait Until Element Is Visible    courseId
    Input Text    courseId   Test_robot_createcourse
    Input Text    courseName    Test_robot_createcourse
    Click Button    submit
    Capture and Close
TC-HR-45
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-course
    Click Element    create-course
    Wait Until Element Is Visible    courseId
    Input Text    courseName    Test_robot_createcourse
    Click Button    submit
    Capture and Close

TC-HR-46
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-course
    Click Element    create-course
    Wait Until Element Is Visible    courseId
    Input Text    courseId   Test_robot_createcourse
    Click Button    submit
    Capture and Close

TC-HR-47
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-course
    Click Element    create-course
    Wait Until Element Is Visible    courseId
    Click Button    submit
    Capture and Close

TC-HR-48
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-session
    Click Element    create-session
    Wait Until Element Is Visible    courseLimit
    Click Element    select-course
    Wait Until Element Is Visible    Test
    Click Element    Test
    Input Text    courseLimit    100
    Input Text    hours    12
    Input Text    periods    TEST
    Input Text    trainingLocation    TEST
    Input Text    trainingDate    20042570
    Click Button    submit
    Capture and Close

TC-HR-49
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-session
    Click Element    create-session
    Wait Until Element Is Visible    courseLimit
    Input Text    courseLimit    100
    Input Text    hours    12
    Input Text    periods    TEST
    Input Text    trainingLocation    TEST
    Input Text    trainingDate    12121234
    Click Button    submit
    Capture and Close

TC-HR-50
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-session
    Click Element    create-session
    Wait Until Element Is Visible    courseLimit
    Click Element    select-course
    Wait Until Element Is Visible    Test
    Click Element    Test
    Input Text    courseLimit    100
    Input Text    hours    12
    Input Text    periods    TEST
    Input Text    trainingLocation    TEST
    Click Button    submit
    Capture and Close

TC-HR-51
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-session
    Click Element    create-session
    Wait Until Element Is Visible    courseLimit
    Click Element    select-course
    Wait Until Element Is Visible    Test
    Click Element    Test
    Input Text    courseLimit    100
    Input Text    hours    12
    Input Text    periods    TEST
    Input Text    trainingLocation    TEST
    Input Text    trainingDate    20042570
    Click Button    submit
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
TC-HR-54
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Wait Until Element Is Visible    all
    Click Element    all
    Capture and Close

TC-HR-55
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Wait Until Element Is Visible    start-2
    Click Button    start-2
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div/div/div[2]/button[2]
    Click Button    xpath=/html/body/div[3]/div/div/div[2]/button[2]
    Capture and Close

TC-HR-56
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Wait Until Element Is Visible    start-2
    Click Button    start-2
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div/div/div[2]/button[1]
    Click Button    xpath=/html/body/div[3]/div/div/div[2]/button[1]

TC-HR-57
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Wait Until Element Is Visible    close-2
    Click Button    close-2
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div/div/div[2]/button[2]
    Click Button    xpath=/html/body/div[3]/div/div/div[2]/button[2]
    Capture and Close

TC-HR-58
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Wait Until Element Is Visible    close-2
    Click Button    close-2
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div/div/div[2]/button[1]
    Click Button    xpath=/html/body/div[3]/div/div/div[2]/button[1]
    Capture and Close

TC-HR-59
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Click Element    ongoing
    Wait Until Element Is Visible    complete-0
    Click Button    complete-0
    Wait Until Element Is Visible    xpath=/html/body/div[3]/div/div/div[2]/button[2]
    Click Button    xpath=/html/body/div[3]/div/div/div[2]/button[2]
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
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/p[1]    รหัสคอร์ส: Test
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/p[2]    ชื่อคอร์ส: Tset
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[1]    รอบ: S003
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[2]    จำนวนที่นั่ง: 99
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[3]    จำนวนชั่วโมงอบรม: 10
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[4]    เวลาอบรม: test
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[5]    สถานที่อบรม: test
    Element Text Should Be  xpath=//*[@id="content-wrapper"]/div[2]/div/div/div[2]/div/div/div/div/p[6]    วันที่อบรม: 2026-05-18
    Capture and Close

TC-HR-62
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Wait Until Element Is Visible    detail-0
    Click Button    detail-0
    Wait Until Element Is Visible    edit-button
    Click Button    edit-button
    Sleep    1s
    Input Text    courseLimit    99
    Input Text    hours    10
    Input Text    periods    test
    Input Text    trainingLocation    test
    Input Text    trainingDate    05182026
    Click Button    submit
    Capture and Close

TC-HR-63
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    course
    Click Element    course
    Wait Until Element Is Visible    detail-0
    Click Button    detail-0
    Wait Until Element Is Visible    edit-button
    Click Button    edit-button
    Wait Until Element Is Visible    courseLimit
    Input Text    courseLimit    99
    Input Text    hours    10
    Clear Element Text    periods
    Clear Element Text    trainingLocation
    Click Button    submit
    Capture and Close

TC-HR-64
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-course
    Click Element    create-course
    Wait Until Element Is Visible    back
    Click Button    back
    Capture and Close
TC-HR-65
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-course
    Click Element    create-course
    Wait Until Element Is Visible    courseId
    Click Button    forward
    Wait Until Element Is Visible    sessionId
    Capture and Close

TC-HR-66
    Login to ECMS    hsy    1234  
    Wait Until Element Is Visible    courses
    Click Element    courses
    Wait Until Element Is Visible    create-course
    Click Element    create-course
    Wait Until Element Is Visible    courseId
    Click Button    forward
    Wait Until Element Is Visible    sessionId
    Click Button    back
    Capture and Close

TC-HR-67
    Open Browser    http://localhost:3000/ecms/hr/dashboard    edge
    Capture and Close

TC-HR-68
    Login to ECMS    hsy    1234
    Capture and Close

TC-HR-69
    Login to ECMS    hsy    1234
    Wait Until Element Is Visible    id=dropdown    10s
    Click Element    id=dropdown
    Capture and Close

TC-HR-70
    Login to ECMS    hsy    1234
    Open My Profile
    Sleep    1s
    Check Value By ID    empId    EMP001
    Check Value By ID    department   Managers
    Check Value By ID    empName    HSY
    Check Value By ID    cardId   1234
    Check Value By ID    email    hsy
    Check Value By ID    tel    0
    Capture and Close

TC-HR-71
    login to ECMS   hsy     1234
    Open My Profile
    Wait Until Element Is Visible    xpath=//*[@id="edit-button"]
    Click Element   xpath=//*[@id="edit-button"]
    Sleep    1s
    Clear Element Text    id=department
    Input Text       id=department    Managers
    Scroll Element Into View    xpath=//*[@id="submit"]
    Click Element   xpath=//*[@id="submit"]
    Capture and Close


TC-HR-72
    login to ECMS   hsy     1234
    Open My Profile
    Wait Until Element Is Visible    xpath=//*[@id="edit-button"]
    Click Element   xpath=//*[@id="edit-button"]
    Sleep   1s
    Scroll Element Into View    xpath=//*[@id="submit"]
    Clear Element Text    id=tel
    Input Text  id=tel  ${EMPTY}
    Click Element   xpath=//*[@id="submit"]
    Capture and Close

TC-HR-73
    login to ECMS   hsy     1234
    Open My Profile
    Wait Until Element Is Visible    xpath=//*[@id="edit-button"]
    Click Element   xpath=//*[@id="edit-button"]
    Sleep   1s
    Click Element   id=back
    Capture and Close

TC-HR-74
    login to ECMS   hsy     1234
    Open My Profile
    Wait Until Element Is Visible    xpath=//*[@id="edit-button"]
    Click Element   id=back
    Capture and Close

TC-HR-75
    login to ECMS   hsy     1234
    Wait Until Element Is Visible    dropdown
    Click Element    dropdown
    Wait Until Element Is Visible    logout
    Click Element    logout
    Capture and Close
    