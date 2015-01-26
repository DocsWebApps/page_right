## PageRight Gem - Checks the content of your rendered web pages. `Currently under development !!`

Version 0.6.0 23rd January 2015

A very simple gem that contains a few helper/wrapper methods utilising Capybara to aid testing the contents of a rendered web page when writing integration tests.

It works with Test::Unit for now since this gem simply mixes in methods to ActiveSupport::TestCase, but I hope to develop it further to be used with RSpec and Cucumber.

Semantic versioning is applied to this gem.

### Installation:

Include it in your Gemfile and the methods will be mixed in to ActiveSupport::TestCase.

```ruby
gem 'page_right'
```

### Method Descriptions:

#### is_text_in_page?(content, flag=true)

This method will search the whole page for the `content` provided and check that it is in the page. If `flag=false` is set, then the method will check that `content` is not on the page.

Examples:

```ruby
is_text_in_page?('This text')
```

Checks `This text` is in the page.

```ruby
is_text_in_page?('Your text here', false)
```

Check `Your text here` is NOT in the page.

#### is_text_in_section?(section, content, flag=true)

This method will check that the `content` is displayed within a particular css selector `section` (div, or other named html element). If `flag=false` is set, then the method will check that the `content` is not within the css selector `section`.

Examples:

```ruby
is_text_in_section?('.named-class' 'This text')
```

Check `This text` is within a class called `named-class`.

```ruby
is_text_in_section?('#named-id', 'Your text here', false)
```

Check `Your text here` is not within any id called `named-id`

#### is_css_in_page?(css, flag=true))

This method will check that the class or id supplied is displayed somewhere on the page. If `flag=false` is set, then the method will check that the class or id supplied is not displayed anywhere on the page.

Examples:

```ruby
is_css_in_page?('#my-css')
```

Check that a css selector with id `my-css` is in the page.

```ruby 
is_css_in_page?('.my-css', false)
```
Check that an css selector with a class `my-css`is NOT in the page.

#### is_css_in_section?(css1, css2, flag=true)

This method will check that the `css2` selector is nested within a another `css1` selector. If `flag=false` is set, then the method will check that the `css2` selector is not within the `css1` selector. This method is good if you want to check for nested css selectors as if often the case.

Examples:

```ruby
is_css_in_section?('.my-css1', '#my-css2')
```

Check the id `my-css2`is nested in class `my-css1`.

```ruby
is_css_in_section?('#my-css1', '.my-css2', false)
```

Check the class `my-css2` is NOT nested within the id `my-css1`.

#### is_image_in_section?(section, image, count, flag=true)

This method will check that the number of `image(s)` in the `section` is equal to `count`. If `flag=false` is set, then the method will check the number of `image(s)` in the `section` is not equal to `count`. If you just want to check that a particular `image` is in a particluar css selector `section` then pass in value of 1 for the `count` argument.

Examples:

```ruby
is_image_in_section?('.my-css', 'my-image.jpg', 1)
```

Check there is exactly one `my-image.jpg` image within a class `my-css`.

```ruby
is_image_in_section?('#my-css', 'my-image.jpg', 1, false)
```

Check there is NOT a `my-image.jpg` image within an id `my-css`.

```ruby
is_image_in_section?('#my-css', 'my-image.jpg', 3)
```

Check there are  3 `my-image.jpg` image's within an id `my-css`.


### License

PageRight is released under the <a href="http://www.opensource.org/licenses/MIT" target="_blank">MIT License</a>.

<a href="https://www.omniref.com/ruby/gems/page-right"><img src="https://www.omniref.com/ruby/gems/page-right.png" alt="page-right API Documentation" /></a>