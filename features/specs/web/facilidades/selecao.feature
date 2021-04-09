#language: pt

Funcionalidade: Seleção

  @selecionar_facilidades
  Cenário: Selecionar facilidades
    Dado que tenha acessado a categoria "Unidades" e esteja na página
    Quando acessar o filtro de facilidades
    E selecionar facilidades "Bicicletário e vaga verde,Atendimento aos domingos"
    E acessar o primeiro resultado da busca
    Então deverá ser exibida a página da unidade escolhida
