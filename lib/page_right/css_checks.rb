module ActiveSupport
  class TestCase
    # Check that a css element is on the page, set flag to check that it isn't
    def css_in_page(css, flag=true)
      if flag
        assert page.has_css?("#{css}"), "Error: #{css} not found on page !"
      else
        assert !page.has_css?("#{css}"), "Error: #{css} found on page !"
      end
    end

    # Check that a css element is nested within another css element, set flag to check that it isn't
    def css_in_section(css1, css2, flag=true)
      within("#{css1}") do
        if flag
          assert page.has_css?("#{css2}"), "Error: #{css2} not found in #{css1} !"
        else
          assert !page.has_css?("#{css2}"), "Error: #{css2} found in #{css1} !"
        end
      end
    end
  end
end