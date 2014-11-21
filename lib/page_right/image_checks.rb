module ActiveSupport
	class TestCase
		# Check that 'count' number of 'image's is in a 'section' of css, set flag to check that it/they isn't/arn't
    def image_in_section(section, image, count, flag=true)
      if flag
        assert page.has_selector?(:css,"#{section} img[src$='/assets/#{image}']", count: count), "Error: #{count} #{image}(s) not found in #{section} !"
      else
        assert !page.has_selector?(:css,"#{section} img[src$='/assets/#{image}']", count: count), "Error: #{count} #{image}(s) found in #{section} !"
      end
    end
  end
end