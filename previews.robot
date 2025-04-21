*** Settings ***
Documentation    Robot Framework test suite for ECMS
Library    SeleniumLibrary

*** Settings ***
Resource     ./keywords.robot

*** Test Cases ***
TC-EMP-01
    Login to ECMS    emp    admin
    Capture and Close