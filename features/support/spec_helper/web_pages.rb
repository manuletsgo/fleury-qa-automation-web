Dir[File.join(File.dirname(__FILE__), 'page_objects/web/pages/*.rb')]
  .sort.each { |file| require file }

module Web
  module Pages
    class WebPages
      class << self
        def home
          Web::Pages::Home::Home.new
        end

        def category
          Web::Pages::Categories::Category.new
        end

        def unit
          Web::Pages::Units::Unit.new
        end
      end
    end
  end
end
