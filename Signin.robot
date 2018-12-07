*** Settings ***
Library  SeleniumLibrary

Resource   ${EXECDIR}/RegressionCentral/Common.robot


*** Variables ***

${emailfield}       //input[@name='email']
${passwordfield}    //input[contains(@name,'password')]
${signinbutton}     //button[@type='submit'][contains(.,'Sign-in')]
${myaccount}        //a[contains(.,'My Account')]


*** Keywords ***

SigninTest
    go to   https://formswift.com/signIn.php
    maximize browser window
    Click element   ${emailfield}
    Input password  ${emailfield}  AutomatedTest@RH.com
    Click element  ${passwordfield}
    Input password  ${passwordfield}  tester246
    Click Button  ${signinbutton}
    Wait until element is visible  ${myaccount}