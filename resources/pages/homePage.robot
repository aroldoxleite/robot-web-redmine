***Variables***
${ENTRAR}       class:login
${URL_HOME}     http://demo.redmine.org/

***Keywords***
Entrar na tela inicial
    Open Browser                    ${URL_HOME}     ${navegador}
    Set Window Size                 1366    768

Acessar Login
    Wait Until Element Is Visible   ${ENTRAR}
    Click Element                   ${ENTRAR}


