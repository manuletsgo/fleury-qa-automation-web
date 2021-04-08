#language: pt

Funcionalidade: Seleção

    @selecionar_categoria
    Cenário: Selecionar categoria
      Dado que esteja na home
      Quando acessar a categoria "Unidades"
      Então deverá ser exibida a página da categoria "Unidades"
