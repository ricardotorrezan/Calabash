Dado(/^que eu acesse a home do Aplicativo$/) do
  sleep 05
  wait_for_element_exists("android.widget.Button marked:'ENTRAR'", :timeout => 10)
end

Quando(/^eu clicar em Entrar$/) do
  touch("android.widget.Button id:'btRegisteredUser'")
end

Quando(/^informar o telefone$/) do
  wait_for_element_exists("android.widget.Button marked:'CONTINUAR'", :timeout => 10)
  query("* id:'etPhoneNumber'", setText: Faker::Base.numerify("119########"))
  touch("android.widget.Button id:'btLoginWithPhone'")
end

Então(/^deverei ser direcionado para a tela de cadastro$/) do
  wait_for_element_exists("android.widget.Button marked:'CONFIRMAR'", :timeout => 10)
end

Então(/^preencho os campos iniciais$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
