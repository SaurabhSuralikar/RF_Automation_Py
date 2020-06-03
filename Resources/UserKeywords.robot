*** Settings ***
Library   ../Test Data/ReadData.py


*** Keywords ***

Read Number Of Rows
    [Arguments]  ${Sheetname}
    ${maxr}=  fetch_no_of_rows  ${Sheetname}
    [Return]  ${maxr}

Read Excel Cell data
    [Arguments]  ${Sheetname}  ${row}  ${cell}
    ${celldata}=  fetch_cell_data  ${Sheetname}  ${row}  ${cell}
    [Return]  ${celldata}




