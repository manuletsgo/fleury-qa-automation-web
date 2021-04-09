Dado("que tenha acessado a categoria {string} e esteja na página") do |category|
  step "acessar a categoria '#{category}'"
  step "deverá ser exibida a página da categoria '#{category}'"
end
