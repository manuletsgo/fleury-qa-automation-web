module Web
  module Sections
    module Components
      class Filters < SitePrism::Section

        element :selecione, 'div[class*=checkbox-selectcomponentstyle].jgzIlF'
        elements :facilidades, 'div[class*=checkbox-fieldcomponentstyle].DRDNI'

        def selecionar_facilidades(filtro)
          selecione.gclick
          clicadas=0
          filtro.split(',').each do |f|
            facilidades.each do |cat|
              if (cat.text.match(/#{f}/i))
                cat.gclick
                clicadas+=1
                break
              end
            end
          end
          raise("ERRO: Facilidade não encontrada") if clicadas == 0
        end

      end
    end
  end
end
