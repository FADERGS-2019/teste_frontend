Dado("que eu estou na pagina inicial do site") do
    visit ''
  end
  
Quando("eu preencher os dados de entrega do meu pedido") do
  find('#delivery-form > div:nth-child(1) > input').send_keys('Jose Silva')
  find('#delivery-form > div:nth-child(2) > input').send_keys('jose.silva@teste.com')
  find('#delivery-form > div:nth-child(3) > input').send_keys('000000000000')
  find('#delivery-form > div:nth-child(4) > input').send_keys('99999999')
  find('#delivery-form > div:nth-child(5) > input').send_keys('Rua Marilene')
  find('#delivery-form > div:nth-child(6) > input').send_keys('30')
  find('#delivery-form > div:nth-child(7) > input').send_keys('AP 21')
  find('#delivery-form > div:nth-child(8) > input').send_keys('5199999999')
  find('#app > footer > div > button').click
end
  
#Quando("selecionar o pedido personalizado") do
#  find('#app > div > main > div:nth-child(1) > div.card__featured > img').click
#end
  
Quando("escolher a Pizza familia") do
  find('#app > div > main > div:nth-child(2) > div:nth-child(1) > div > div > div:nth-child(2) > div').click
  find('#app > footer > button').click
end
  
Quando("escolher {int} sabores") do |int|
  find('#app > div > main > div > div > button:nth-child(1)').click
  find('#app > div > main > div > div > button:nth-child(1)').click
  find('#app > div > main > div > div > button:nth-child(1)').click
  find('#app > div > main > div > div > button:nth-child(1)').click
  find('#app > footer > button').click
end
  
Quando("escolher {int} sabores Alho e Óleo") do |int|
  find('#app > div > main > div:nth-child(1) > div > div > div:nth-child(2) > div > button:nth-child(1)').click
  find('#app > div > main > div:nth-child(1) > div > div > div:nth-child(2) > div > button:nth-child(1)').click
  find('#app > div > main > div:nth-child(1) > div > div > div:nth-child(2) > div > button:nth-child(1)').click
  find('#app > div > main > div:nth-child(1) > div > div > div:nth-child(2) > div > button:nth-child(1)').click
  find('#app > footer > button').click
end
  
Quando("clicar em continuar") do
  find('#app > footer > div > button:nth-child(2)').click
end
  
Entao("minha Pizza deve ser adicionada no carrinho de compras") do
  find('#app > header > nav:nth-child(3) > a').click
  @texto = find('#app > div > main > div > div > div > div > div:nth-child(1) > h3')
  expect(@texto.text).to eql 'Pizza Família'
end
  
Quando("clicar em finalizar") do
  find('#app > footer > div > button').click
end
  
Quando("clicar em Cartão de Crédito ou Débito") do
  find('#app > div > main > div:nth-child(1) > div > div > div:nth-child(1) > h2').click
end
 
Então("meu pedido deve ser finalizado com sucesso") do
  find('#app > footer > div > button').click 
  @texto = find('#app > div > main > h2')
  expect(@texto.text).to eql 'Pedido finalizado!'
end