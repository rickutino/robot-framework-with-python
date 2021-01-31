# https://training-wheels-protocol.herokuapp.com/

*** Settings ***
Resource              base.robot

Test Setup            New Session
Test Teardown         Closer Session

*** Test Cases ***
Should See Page Title
  Title Should Be   Training Wheels Protocol