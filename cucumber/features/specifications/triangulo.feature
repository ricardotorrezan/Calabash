#language: pt


Funcionalidade: Calcular os lados do triangulo

Eu, como usuário do app
Desejo informar os valores dos lados do triangulo
Para realizar um cálculo e me mostrar o tipo de triangulo

@antes_tudo
Cenario: Calcular lados do triangulo

  Dado que eu informe o lado um
  E informar o lado dois
  E informar o lado tres
  Quando eu clicar em Calcular
  Entao deverá mostrar o tipo de triângulo

  #Then I wait for "mensagem a esperar" to appear
