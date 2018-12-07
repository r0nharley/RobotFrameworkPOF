*** Settings ***
Documentation  Formswift Functional Tests Suite

Resource   ${EXECDIR}/RegressionCentral/Common.robot
Resource   ${EXECDIR}/RegressionCentral/StrategicPlanFill.robot
Resource   ${EXECDIR}/RegressionCentral/Signin.robot
Resource   ${EXECDIR}/RegressionCentral/DocumentSearch.robot


Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***

${BROWSER}   chrome



*** Test Cases ***
Sign In
    Log To Console  User Sign in
    Signin.SigninTest

Document Search
    Log To Console  Document Search Test
    Signin.SigninTest
    DocumentSearch.DocumentSearchTest

Strategic Plan
    Log To Console  Strategic Plan Test
    Signin.SigninTest
    DocumentSearch.DocumentSearchTest
    StrategicPlanFill.Strategic Plan Form





*** Keywords ***
