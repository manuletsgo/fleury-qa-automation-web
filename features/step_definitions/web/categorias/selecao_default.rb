#encoding: UTF-8
Dado("que tenha acessado a categoria {string} e esteja na página") do |categoria|
  step 'que esteja na home'
  @main_header = @home.main_header
  @main_header.acessar_categoria(categoria)
  @unidades = $web_pages.unidades
  step "deverá ser exibida a página da categoria '#{categoria}'"
end
