*** Settings ***

Library  SeleniumLibrary
Resource   ${EXECDIR}/RegressionCentral/Common.robot
Resource   ${EXECDIR}/RegressionCentral/StrategicPlanFill.robot
Resource   ${EXECDIR}/RegressionCentral/Signin.robot


*** Variables ***
${doclibtab}        //a[contains(.,'Document Library')]
${docsearchfield}   //input[contains(@name,'docSearch')]
${invoicetext}      (//span[@class='document-label'][contains(.,'Bill Of Sale')])[6]
${invoicecreatedocument}   (//a[contains(@href,'api/newDocument.php?member=1&documentType=strategic-plan-template&builderType=static')])[2]



*** Keywords ***
DocumentSearchTest
    wait until element is visible   ${doclibtab}  10
    click element   ${doclibtab}
    wait until element is visible  ${docsearchfield}
    Input Text  ${docsearchfield}  Strategic
    wait until element is visible  ${invoicecreatedocument}  10
    click element  ${invoicecreatedocument}
    wait until element is visible  //h2[@class='static-builder-form-header'][contains(.,'What is the name of your organization?')]




