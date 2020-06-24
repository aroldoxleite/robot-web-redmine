***Keywords***
Verifico que estou na pagina de login
    Wait Until Element Is Visible   id:login-form

Fazer login
    [Arguments]     ${user}         ${pass}

    Input Text      id:username     ${user}
    Input Text      id:password     ${pass}
    Click Button    css:input[name='login']

Verifico alerta no login
    [Arguments]     ${mensagem}
    
    Wait Until Element Contains     id:flash_error   ${mensagem}