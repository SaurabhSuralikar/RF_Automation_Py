*** Settings ***
Library     SeleniumLibrary
Variables  ../PageObject/LoginLocators.py

*** Keywords ***
Open My Browser
  [Arguments]  ${URL}  ${Browser}
  Open Browser    ${URL}  ${Browser}
  Maximize browser window
  Sleep  2 seconds

Enter UserName
  [Arguments]  ${username}
  Input Text  ${txt_LoginUserName}  ${username}

Enter Password

  [Arguments]  ${password}
  Input Text  ${txt_LoginUserPwd}  ${password}

Click Loginin
  click element  ${login_btn_click}

Click Submit
    click button  ${submit_btn_click}


Close My Browser
    Close browser
