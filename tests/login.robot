***Settings***
Documentation   Login
...             Sendo um usuário redmine
...             Quero me autenticar no sistema
...             Para que eu possa gerenciar meus projetos


Resource        ../resources/actions.robot

Test Teardown  Encerrar Teste  

***Test Cases***
Usuário autenticado
    [tags]  principal
    Dado que acesso a página login
    Quando submeto minhas credenciais "conexaotqi" e "1234"
    Então devo ser autenticado com nome "conexaotqi"

Tentar logar sem senha
    Dado que acesso a página login
    Quando submeto minhas credenciais "conexaotqi" e "${EMPTY}"
    Então devo ser ver a mensagem "Invalid user or password"



