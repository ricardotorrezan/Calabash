require 'calabash-android/calabash_steps'

Dado(/^que eu acesso o console do calabash$/) do
  puts 'uhuulll'
end

Quando(/^eu reinstalar o app$/) do
  puts 'deu certo'
end

Quando(/^entrar em background do app$/) do
  puts 'aqui tbm'
end

Entao(/^eu consigo buscar elementos$/) do
  touch('android.widget.Button', id:'btnCep')
  touch('android.widget.TextView')
  keyboard_enter_text("01526060")
  hide_soft_keyboard
  touch('android.widget.Button', id:'btnChamaBuscaCEP')
  sleep 10
  wait_for_elements_exist("android.support.v7.widget.AppCompatTextView id:'txtBC_ibge'", :timeout => 10)
  a = query("android.support.v7.widget.AppCompatTextView id:'txtBC_ibge'")[0]
  puts a["text"]
end
