*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/UserKeywords.robot
Resource   ../Resources/LoginKeywords.robot




*** Variables ***
#${URL}     https://thetestingworld.com
${URL}      https://www.testyou.in/Login.aspx
*** Test Cases ***

Tc_001_Login Logout Functionality

    Open My Browser  ${URL}  Chrome

    ${row}=  Read Number Of Rows  Sheet1
    FOR     ${i}    IN RANGE    1  ${row}+1
        ${username}=  Read Excel Cell data  Sheet1  ${i}  1
        ${password}=  Read Excel Cell data  Sheet1  ${i}  2
        Enter UserName  ${username}
        Enter Password  ${password}
        Click Submit

        #click button  xpath://button[@type='submit']
        Sleep  5 seconds
        log to console  ${i}

    END
    Close My Browser
#    Log to Console  ${row}
#    ${data}=  Read Excel Cell data  Sheet1  2  1
#    Log to Console  ${data}
#
#
#    input text  id:username  testing
#    input text  id:password  testing
#    click button  xpath://button[@type='submit']
#    Sleep  2 seconds




*** Keywords ***


