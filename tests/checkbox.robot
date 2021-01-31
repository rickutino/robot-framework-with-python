# https://training-wheels-protocol.herokuapp.com/ 

*** Settings ***
Resource              base.robot

Test Setup            New Session
Test Teardown         Closer Session

*** Variables ***
${check_thor}         id:thor
${check_iron_man}     css:input[value$=man]
${check_panther}      xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Checking Option With Id
  Go To                         ${url}checkboxes
  Select Checkbox               ${check_thor}
  Checkbox Should Be Selected   ${check_thor}

Checking Option With CSS Selector
  Go To                         ${url}checkboxes
  Select Checkbox               ${check_iron_man}
  Checkbox Should Be Selected   ${check_iron_man}

Checking Option With Xpath
  Go To                         ${url}checkboxes
  Select Checkbox               ${check_panther}
  Checkbox Should Be Selected   ${check_panther}