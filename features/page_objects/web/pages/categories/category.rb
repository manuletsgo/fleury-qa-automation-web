require_relative '../../sections/components/filters.rb'
require_relative '../../sections/components/units.rb'

module Web
  module Pages
    module Categories
      class Category < SitePrism::Page
        section :filters, Web::Sections::Components::Filters, '.sc-bwzfXH.gridcomponent__RowStyled-sc-8zg10d-1.fqDNCQ:nth-child(3)'
        sections :units, Web::Sections::Components::Units, 'div[class^=unit-cellcomponentstyle]'

        element :span_unidades, '.lomAMa'
      end
    end
  end
end
