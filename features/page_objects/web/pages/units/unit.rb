module Web
  module Pages
    module Units
      class Unit < SitePrism::Page
        element :unit, '.lomAMa'
        element :address, '.bmAjeB .hezrQv > .hWDpiu'
        element :facilities, '.hezrQv .vfUcR'

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
