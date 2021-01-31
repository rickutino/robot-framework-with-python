*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}                https://training-wheels-protocol.herokuapp.com/

*** Keywords ***
New Session
    Open Browser                  ${url}                chrome

Closer Session
    Capture Page Screenshot
    Close Browser