module Web
  module Sections
    module Headers
      class MainHeader < SitePrism::Section

        elements :categorias, '.unidades'

        def acessar_categoria(c)
          clicadas=0
          categorias.each do |cat|
            if (cat.text.match(/#{c}/i))
              cat.click
              clicadas+=1
              break
            end
          end
          raise("ERRO: Categoria não encontrada") if clicadas == 0
        end

      end
    end
  end
end

