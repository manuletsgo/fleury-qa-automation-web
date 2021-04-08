#language: pt

Funcionalidade: Seleção

    @selecionar_funcionalidades
    Cenário: Selecionar facilidades
      Dado que tenha acessado a categoria "Unidades" e esteja na página "Unidades"
      Quando acessar o filtro de facilidades
      E selecionar "Acessilibidade", "Vacinação", "Unidades em shoppings"
      E acessar o primeiro resultado da busca
      Então deverá ser exibida a página da unidade escolhida
