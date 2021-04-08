

module Web
  module Sections
    module Components
      class Filters < SitePrism::Section

        element :selecione, 'div[class*=checkbox-selectcomponentstyle]'
        elements :facilidades, 'div[class*=Item]'

        def selecionar_facilidades(f)
          clicadas=0
          facilidades.each do |cat|
            if (cat.text.match(/#{f}/i))
              cat.click
              clicadas+=1
              break
            end
          end
          raise("ERRO: Facilidade não encontrada") if clicadas == 0
        end

      end
    end
  end
end

