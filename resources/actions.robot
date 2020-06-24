***Settings***
Library     SeleniumLibrary

Resource    pages/homePage.robot
Resource    pages/hubPage.robot
Resource    pages/loginPage.robot

***Keywords***
#steps
Dado que acesso a página login
    homePage.Entrar na tela inicial
    homePage.Acessar Login
    loginPage.Verifico que estou na pagina de login

Quando submeto minhas credenciais "${user}" e "${pass}"
    loginPage.Fazer login  ${user}  ${pass}

Então devo ser autenticado com nome "${nome}"
    hubPage.Verifico se estou logado  ${nome}

Então devo ser ver a mensagem "${mensagem}"
    loginPage.Verifico alerta no login  ${mensagem}


#hooks
Encerrar Teste
    Capture Page Screenshot
    Close Browser