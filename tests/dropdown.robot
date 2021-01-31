*** Settings ***
Resource              base.robot

Test Setup            New Session
Test Teardown         Closer Session


*** Test Cases ***
Selection For Text and Validator with Value
      Go To                             ${url}dropdown
      Select From List By Label         id:dropdown                   Loki
      ${selected}=                      Get Selected List Value       id:dropdown
      Should Be Equal                   ${selected}                   6

Selection For Value and Validator with Text
      Go To                             ${url}dropdown
      Select From List By Value         class:avenger-list            4
      ${selected}=                      Get Selected List Label       class:avenger-list
      Should Be Equal                   ${selected}                   Natasha Romanoff