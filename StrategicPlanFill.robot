*** Settings ***
Library  SeleniumLibrary

Resource   ${EXECDIR}/RegressionCentral/Common.robot
Resource   ${EXECDIR}/RegressionCentral/StrategicPlanFill.robot
Resource   ${EXECDIR}/RegressionCentral/Signin.robot


*** Variables ***
${Name_Field}                   //input[contains(@name,'organization_full_name')]
${Common_Name_Field}            //input[contains(@name,'organization_name')]
${Save_And_Continue}            //button[@type='button'][contains(.,'Save & Continue')]
${Date_Selection}               //input[@class='input-large datepicker-calendar'][contains(@id,'created')]
${Vision_Statement}             //textarea[@class='input-xlarge'][contains(@id,'statement')]
${Mission_Statement}            //textarea[contains(@name,'mission_statement')]
${Primary_Business}             //textarea[contains(@name,'business_activity')]
${First_Team_Member}            //input[contains(@name,'name_0')]
${First_Team_Member_Title}      //input[contains(@name,'title_0')]
${First_Team_Member_Skills}     //textarea[@name='skill_0']
${Strengths}                    //input[contains(@name,'strength_0')]
${Opportunity}                  //input[contains(@name,'opportunity_0')]
${Weakness}                     //input[@name='weakness_0']
${Threats}                      //input[@name='threat_0']
${Yes_Radio_Button}             //input[contains(@value,'yes')]
${No_Radio_Button}              //input[contains(@value,'no')]
${Industry_Checkbox}            //input[contains(@value,'industry')]
${Competitors_Checkbox}         //input[contains(@value,'competitors')]
${Marketing_Checkbox}           //input[contains(@value,'marketing')]
${Customers_Checkbox}           //input[contains(@value,'customers')]
${Organization_Industry}        //input[contains(@name,'industry_name')]
${Current_Industry_State}       //textarea[contains(@name,'describe_industry')]
${Main_Competitors}             //textarea[contains(@name,'describe_competitors')]
${Organization_M_Strategy}      //textarea[contains(@name,'describe_marketing')]
${Target_Customer}              //textarea[contains(@name,'describe_customers')]
${HighLevelObjectives}          //textarea[@class='input-xlarge'][contains(@id,'objectives')]
${HighLevelActionSteps}         //textarea[contains(@name,'high_level_action')]
${Save_Export}                  //a[@class='btn btn-success export-button-preview'][contains(.,'Export Your Strategic Plan Template')]
${Section_1_Header}             What is the name of your organization?
${Section_2_Header}             On what date is this strategic plan being created or updated?
${Section_3_Header}             Outline the vision of your organization.
${Section_4_Header}             The mission of this organization is to:
${Section_5_Header}             Describe the primary business of your organization.
${Section_6_Header}             To add another team member, press the blue + Add Another button. You may add up to 10 team members.
${Section_7_Header}             To add another strength, press the blue + Add Another button. You may add up to 10 items.
${Section_8_Header}             To add another opportunity, press the blue + Add Another button. You may add up to 10 items.
${Section_9_Header}             To add another weakness, press the blue + Add Another button. You may add up to 10 items.
${Section_10_Header}            To add another threat, press the blue + Add Another button. You may add up to 10 items.
${Section_11_Header}            Select Sections to Include (if any):
${Section_15_Header}            To add another goal, press the blue + Add Another button. You may add up to 5 goals.
${Add_Another_Copy}             To add another goal, press the blue + Add Another button. You may add up to 5 goals.
${Print_Ready}                  //h1[@class='upgrade-pricing-page-header'][contains(.,'Choose a Plan for Your Account')]

*** Keywords ***
Strategic Plan Form
    Section 1
    Section 2
    Section 3
    Section 4
    Section 5
    Section 6
    Section 7
    Section 8
    Section 9
    Section 10
    Section 11
    Section 12
    Section 13
    Section 14
    Section 15
    Section 16
    Section 17
    Section 18
    Section 19
    Section 20
    Print Ready Confirmation


Section 1
    wait until element is visible  //h2[@class='static-builder-form-header'][contains(.,'${Section_1_Header}')]  10
    click element  ${Name_Field}
    Input Text  ${Name_Field}  Hello World INC
    click element  ${Common_Name_Field}
    Input Text  ${Common_Name_Field}   Hi World
    click element  ${Save_And_Continue}

Section 2
    wait until element is visible  //h2[@class='static-builder-form-header'][contains(.,'${Section_2_Header}')]  10
    click element  ${Date_Selection}
    Input Text  ${Date_Selection}  11/29/2018
    click element  ${Save_And_Continue}

Section 3
    wait until element is visible  //h2[@class='static-builder-form-header'][contains(.,'${Section_3_Header}')]  10
    Input Text  ${Vision_Statement}  This is my vision statement
    click element  ${Save_And_Continue}

Section 4
    wait until element is visible  //label[@class='control-label'][contains(.,'${Section_4_Header}')]  10
    Input Text  ${Mission_Statement}  This is my mission statement
    click element  ${Save_And_Continue}


Section 5
    wait until element is visible  //h2[@class='static-builder-form-header'][contains(.,'${Section_5_Header}')]  10
    Input Text  ${Primary_Business}  My business is automation
    click element  ${Save_And_Continue}


Section 6
    wait until element is visible  //div[@class='controls alert'][contains(.,'${Section_6_Header}')]  10
    click element  ${First_Team_Member}
    Input Text  ${First_Team_Member}   Ron
    click element  ${First_Team_Member_Title}
    Input Text  ${First_Team_Member_Title}  QA Engineer
    click element  ${First_Team_Member_Skills}
    Input Text  ${First_Team_Member_Skills}    Test Automation
    click element  ${Save_And_Continue}


Section 7
    wait until element is visible  //div[@class='controls alert'][contains(.,'${Section_7_Header}')]  10
    click element  ${Strengths}
    Input Text  ${Strengths}  Persistance
    click element  ${Save_And_Continue}

Section 8
    wait until element is visible  //div[@class='controls alert'][contains(.,'${Section_8_Header}')]  10
    click element  ${Opportunity}
    Input Text  ${Opportunity}  Work
    click element  ${Save_And_Continue}

Section 9
    wait until element is visible  //div[@class='controls alert'][contains(.,'${Section_9_Header}')]  10
    click element  ${Weakness}
    Input Text  ${Weakness}  Overworking
    click element  ${Save_And_Continue}


Section 10
    wait until element is visible  //div[@class='controls alert'][contains(.,'${Section_10_Header}')]  10
    click element  ${Threats}
    Input Text  ${Threats}  Competition
    click element  ${Save_And_Continue}


Section 11
    wait until element is visible  //label[@class='control-label'][contains(.,'${Section_11_Header}')]  10
    click element  ${Industry_Checkbox}
    click element  ${Competitors_Checkbox}
    click element  ${Save_And_Continue}


Section 12
    wait until element is visible  //strong[contains(.,'Section 12')]
    click element  ${Organization_Industry}
    Input Text  ${Organization_Industry}  Test Automation
    click element  ${Current_Industry_State}
    Input Text  ${Current_Industry_State}  Good State
    click element   ${Main_Competitors}
    Input Text  ${Main_Competitors}  Myself
    click element  ${Save_And_Continue}



Section 13
    wait until element is visible  //label[@class='control-label'][contains(.,'${Section_11_Header}')]  10
    click element  ${Marketing_Checkbox}
    click element  ${Customers_Checkbox}
    click element  ${Save_And_Continue}



Section 14
    wait until element is visible  //strong[contains(.,'Section 14')]  10
    click element  ${Organization_M_Strategy}
    Input Text  ${Organization_M_Strategy}  Automation
    click element  ${Target_Customer}
    Input Text  ${Target_Customer}  Startups
    click element  ${Save_And_Continue}



Section 15
    wait until element is visible  //strong[contains(.,'Section 15')]  10
    element should not be visible   //div[@class='controls alert'][contains(.,'${Section_15_Header}')]
    wait until element is visible  ${Save_And_Continue}
    click element  ${Save_And_Continue}


Section 16
    wait until element is visible  //strong[contains(.,'Section 16')]  10
    element should not be visible   //div[@class='controls alert'][contains(.,'${Add_Another_Copy}')]
    wait until element is visible  ${Save_And_Continue}
    click element  ${Save_And_Continue}

Section 17
    wait until element is visible  //strong[contains(.,'Section 17')]  10
    element should not be visible   //div[@class='controls alert'][contains(.,'${Add_Another_Copy}')]
    wait until element is visible  ${Save_And_Continue}
    click element  ${Save_And_Continue}


Section 18
    wait until element is visible  //strong[contains(.,'Section 18')]  10
    element should not be visible   //div[@class='controls alert'][contains(.,'${Add_Another_Copy}')]
    wait until element is visible  ${Save_And_Continue}
    click element  ${Save_And_Continue}


Section 19
    wait until element is visible  //strong[contains(.,'Section 19')]  10
    click element  ${HighLevelObjectives}
    Input Text  ${HighLevelObjectives}  Automation
    click element  ${HighLevelActionSteps}
    Input Text  ${HighLevelActionSteps}  Startups
    click element  ${Save_And_Continue}


Section 20
    wait until element is visible  //strong[contains(.,'Section 19')]  10
    click element  ${Save_Export}

Print Ready Confirmation
    wait until element is visible  ${Print_Ready}  10

