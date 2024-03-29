Dado("que acesso a tela de Login") do
  @nav.tap_hamburger
  @nav.tap_by_text("FORMS")
  @nav.tap_by_text("LOGIN")
end

Quando("submeto minhas credenciais:") do |table|
  user = table.rows_hash
  @login.sign_in(user[:email], user[:senha])
end

Então("devo ver a notifcação {string}") do |notice|
  #log(get_source) #pega o XML da tela
  expect(@toaster.toast.text).to eql notice
end
