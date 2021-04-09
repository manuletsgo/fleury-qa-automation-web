require_relative 'simple_js_runnable.rb'
require_relative 'js_usable_element.rb'

module Capybara
  module Node
    class Element
      # Work around SitePrism's/RSpec's inconsistent api
      # Make helper methods work both on elements and sections/pages
      def root_element
        self
      end

      include PageHelper::JsUsableElement
    end
  end
end

module SitePrism
  class Section
    include PageHelper::JsUsableElement
  end

end
