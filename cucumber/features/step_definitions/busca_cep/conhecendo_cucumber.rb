#first feature

Dado(/^que eu estou aprendendo comandos$/) do
  @nome_cliente = Faker::Name.name
  @cpf = Faker::CPF.Numeric
  @agencia = Faker::Base.numerify('#####-#')
  @conta = Faker::Base.numerify('#####-##')
  puts @nome_cliente
  puts @cpf
  puts @agencia 
  puts @conta
end

Quando(/^escrever os comandos$/) do
  @comandos_2
  @comandos_2 = 'Quando 1'
  puts @comandos_2
end

Entao(/^vou executar$/) do
  teste = 'Entao 1'
  puts teste
end

#second feature

Dado(/^que eu escrevi os comandos$/) do
  puts 10
end

Quando(/^eu executar$/) do
  puts 20
end

Entao(/^ele vai gerar uma expressão regular$/) do
  sleep 10
  puts 30
end

#third

Quando(/^eu vi as regex$/) do
  teste_1 = "Quando 3"
  puts teste_1
end

Entao(/^eu implementei os testes$/) do
  test_2 = "Entao 3"
  puts test_2
end
