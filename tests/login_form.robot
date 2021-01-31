*** Settings ***
Resource              base.robot

Test Setup            New Session
Test Teardown         Closer Session

*** Variables ***
${input_username}     css:input[name=username]
${input_password}     css:input[name=password]
${button_login}       css:button[class$=btn-login]

*** Test Cases ***
Success Loging
  Login With                    stark                    jarvis!
  Page Should Contain           Olá, Tony Stark. Você acessou a área logada!

Invalid Username Loging
  Login With                    ricardo                  jarvis!
  
  Should Contain Login Alert    O usuário informado não está cadastrado!

Invalid Password Loging
  Login With                    stark                    123456
  
  Should Contain Login Alert    Senha é invalida!

*** Keywords ***
Login With
  [Arguments]                   ${username}              ${password}

  Go To                         ${url}login
  Input Text                    ${input_username}        ${username}
  Input Password                ${input_password}        ${password}
  Click Button                  ${button_login}

Should Contain Login Alert
  [Arguments]                   ${expect_message}

  ${message}=                   Get WebElement           id:flash
  Should Contain                ${message.text}          ${expect_message}