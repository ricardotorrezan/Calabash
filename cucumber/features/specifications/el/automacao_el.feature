#language: pt

Funcionalidade: Cadastrando um novo usuário

@dados_cadastrais
@cadastro_el
Cenário: Cadastro de novo usuário

  Dado que eu acesse a home do Aplicativo
  Quando eu clicar em Entrar
  E informar o telefone
  Então deverei ser direcionado para a tela de cadastro
  E preencho os campos iniciais
  E preencho os dados principais
  E escolho a escolaridade
  E escolho a area de atuacao
  Então finalizo o cadastro


  @dados_cadastrais
  Cenário: Agendar uma entrevista

    Dado que eu acesse a home do Aplicativo
    Quando eu clicar em Entrar
    E informar o telefone
    Então deverei ser direcionado para a tela de cadastro
    E preencho os campos iniciais
    E preencho os dados principais
    E escolho a escolaridade
    E escolho a area de atuacao
    Então finalizo o cadastro
