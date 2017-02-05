Dado(/^que eu acesse a home do Aplicativo$/) do
  sleep 03
  wait_for_element_exists("android.widget.Button marked:'ENTRAR'", :timeout => 5)
end

Quando(/^eu clicar em Entrar$/) do
  touch("android.widget.Button id:'btRegisteredUser'")
end

Quando(/^informar o telefone$/) do
  wait_for_element_exists("android.widget.Button marked:'CONTINUAR'", :timeout => 5)
  query("* id:'etPhoneNumber'", setText: @phone_number)
  touch("android.widget.Button id:'btLoginWithPhone'")
end

Então(/^deverei ser direcionado para a tela de cadastro$/) do
  wait_for_element_exists("android.widget.Button marked:'CONFIRMAR'", :timeout => 5)
end

Então(/^preencho os campos iniciais$/) do
  query("* id:'etPassword'", setText: @senha)
  query("* id:'etConfirmPassword'", setText: @senha)
  touch("* id:'btConfirm'")
  wait_for_element_exists("android.widget.TextView marked:'PREENCHA SEUS DADOS'", :timeout => 5)
end

Então(/^preencho os dados principais$/) do
  query("* id:'etName'", setText: @name)
  query("* id:'rbMale'", :setChecked => true)
  query("* id:'etBirthDate'", setText: @data_aniversario)
  query("* id:'etEmail'", setText: @email)
  query("* id:'etCep'", setText: '01526-060')
  touch("* id:'btConfirm'")
  wait_for_element_exists("android.widget.TextView marked:'CLIQUE EM SEU NÍVEL DE ESCOLARIDADE'", :timeout => 5)
end

Então(/^escolho a escolaridade$/) do
  touch("* id:'tvConclusion' index:3")
end

Então(/^escolho a area de atuacao$/) do
  touch("* id:'lblListHeader' index:3")
  touch("* id:'lblListItem' index:3")
  touch("* id:'btFinish'")
end

Então(/^finalizo o cadastro$/) do
  touch("* id:'btFinish'")
end
