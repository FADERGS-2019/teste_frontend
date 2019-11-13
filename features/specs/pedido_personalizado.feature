#language: pt

Funcionalidade: Fazer um pedido personalizado

Contexto:
Dado que eu estou na pagina inicial do site
Quando eu preencher os dados de entrega do meu pedido
#E selecionar o pedido personalizado
E escolher a Pizza familia
E escolher 4 sabores
E escolher 4 sabores Alho e Óleo
E clicar em continuar

Cenario: Adicionar pizza ao carrinho
Entao minha Pizza deve ser adicionada no carrinho de compras

Cenario: Finalizar Pedido
E clicar em finalizar
E clicar em Cartão de Crédito ou Débito
Então meu pedido deve ser finalizado com sucesso