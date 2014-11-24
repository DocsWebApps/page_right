require 'rails'
require 'page_right/css_helper'
require 'page_right/text_helper'
require 'page_right/image_helper'

class Railtie < Rails::Railtie
	initializer "page_right.add_helpers" do
		ActiveSupport::TestCase.send(:include, PageRight::TextHelper)
		ActiveSupport::TestCase.send(:include, PageRight::ImageHelper)
		ActiveSupport::TestCase.send(:include, PageRight::CssHelper)
	end
end