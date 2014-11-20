module ActiveSupport
  class TestCase
    # Check that the text 'content' is on the page, set flag to check that it isn't
    def text_in_page(content, flag=true)
      if flag
        assert page.has_content?("#{content}"), "Error: #{content} not found page !"
      else
        assert !page.has_content?("#{content}"), "Error: #{content} found in page !"
      end
    end
        
    # Check that the text 'content' is within a particular css section, set flag to check that it isn't
    def text_in_section(section, content, flag=true)
      within("#{section}") do
        if flag
          assert page.has_content?("#{content}"), "Error: #{content} not found in #{section} !"
        else
          assert !page.has_content?("#{content}"), "Error: #{content} found in #{section} !"
        end
      end
    end
  end
end