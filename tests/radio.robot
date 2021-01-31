*** Settings ***
Resource              base.robot

Test Setup            New Session
Test Teardown         Closer Session


*** Test Cases ***
Selection For Id
      Go To                             ${url}radios
      Select Radio Button               movies            cap
      Radio Button Should Be Set To     movies            cap

Selection For Value
      Go To                             ${url}radios
      Select Radio Button               movies            thor
      Radio Button Should Be Set To     movies            thor