Dado(/^que eu informe o lado um$/) do
  wait_for_elements_exist("android.widget.Button' id:'btnCalcular'", :timeout => 10)
  #touch("* id:'txtLado1'")
  query("* id:'txtLado1'", setText: @lado_1)
  #hide_soft_keyboard
end

Dado(/^informar o lado dois$/) do
  #touch("* id:'txtLado2'")
  query("* id:'txtLado2'", setText: @lado_2)
  #hide_soft_keyboard
end

Dado(/^informar o lado tres$/) do
  #touch("* id:'txtLado1'")
  query("* id:'txtLado3'", setText: @lado_3)
  #hide_soft_keyboard
end

Quando(/^eu clicar em Calcular$/) do
  sleep 2
  touch("android.widget.Button' id:'btnCalcular'")
end

Entao(/^deverá mostrar o tipo de triângulo$/) do
  wait_for_elements_exist("android.support.v7.widget.AppCompatTextView id:'txtResultado'")
  check_element_exists("* id:'txtResultado' marked:'#{query("* id:'txtResultado'", :getText)[0]}'")
end
