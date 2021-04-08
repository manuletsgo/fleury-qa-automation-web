require_relative '../../sections/components/filters.rb'

module Web
  module Pages
    module Unidades
      class Unidades < SitePrism::Page
        set_url '/'

        section :filters, Web::Sections::Components::Filters, '.sc-bwzfXH .gridcomponent__RowStyled-sc-8zg10d-1 .fqDNCQ'

        element :span_unidades, '.lomAMa'



      end
    end
  end
end
