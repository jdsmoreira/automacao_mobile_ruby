Dado("que acesso a tela Avengers") do
  @nav.tap_hamburger
  @nav.tap_by_text("AVENGERS")
  @nav.tap_by_text("LISTA")
end

Quando("eu apago o Capitão América") do
  #CheckPoint que está na tela certa
  find_element(id: "io.qaninja.android.twp:id/rvList")
  # start_x => posiçãõ inicial na horizontal
  # start_y => posição inicial na veritical
  # offset_x => posião final na horizontal
  # offset_y => posião final na vertical
  # duration => em milesegundos
  #a posições são informadas em percentual, então usa o tamamho da tela para calcular
  cordenadas = { start_x: 0.93, start_y: 0.18, offset_x: 0.48, offset_y: 0.18, duration: 2000 }
  Appium::TouchAction.new.swipe(cordenadas).perform

  find_element(id: "io.qaninja.android.twp:id/btnRemove").click
end

Então("devo ver a seguinte mensagem: {string}") do |expect_message|
  message = find_element(id: "io.qaninja.android.twp:id/snackbar_text")
  expect(message.text).to eql expect_message
end
