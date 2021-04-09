module Web
  module Sections
    module Components
      class Units < SitePrism::Section

        element :unit, 'h3'
        element :address, 'div[class^=unit-cellcomponentstyle] .hWDpiu'
        element :facilities, '.eYPaKj'
        element :ver_no_mapa, '.fqDNCQ button'
        element :ver_detalhes, '.fqDNCQ a[href^="/unidades"]'

        def open_details
          ver_detalhes.gclick
        end

        def get_data
          {
            unit: unit.text,
            address: address.text,
            facilities: facilities.text
          }
        end
      end
    end
  end
end
