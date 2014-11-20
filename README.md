<h1>Page_Right Gem - Checks the content of your rendered web pages. Currently under development !!</h1>

<p><i>Version 0.4 20th November 2014</i></p>

<p>A very simple gem that contains a few helper/wrapper methods that sit on top of Capybara to aid testing the contents of a rendered web page when writing Test::Unit integration tests.</p>

<p>All of the methods in the gem were taken from my helper methods that I've been using in my own projects. Rather than keep copying these helper methods from one rails project to another, I decided to put them in a gem that I could then simply include in all my projects!</p>

<p>It will hopefully reduce the amount of code that you would type out than if you wre using Capybara directly.</p>

<p>It works with Test::Unit for now, but I hope to develop it over time to be used with RSpec and Cucumber.</p>
<br>

<h2>Method descriptions below:</h2>
<ol>
	<li>
		<h4>text_in_page(content, flag=true)</h4>
		<p>This method will search the whole page for the 'content' provided and check that it is in the page. If <i>flag=false</i> is set, then the method will check that 'content' is not on the page.</p>
		<p>Examples:</p>
		<h4><i>text_in_page('Your text here')</i></h4><p>Checks <i>'Your text here'</i> is in the page</p>
		<h4><i>text_in_page('Your text here', false)</i></h4><p>Check <i>'Your text here'</i> is NOT in the page</p>
		<br>
	</li>
	<li>
		<h4>text_in_section(section, content, flag=true)</h4>
		<p>This method will check that the <i>'content'</i> is displayed within a particular css selector <i>'section'</i> (div, or other named html element). If <i>flag=false</i> is set, then the method will check that the <i>'content'</i> is not within the css selector <i>'section'</i>.</p>
		<p>Examples:</p>
		<h4><i>text_in_section('.named-class' 'Your text here')</i></h4><p>Check <i>'Your text here'</i> is within a class called <i>'named-class'</i></p>
		<h4><i>text_in_section('#named-id', 'Your text here', false)</i></h4><p>Check <i>'Your text here'</i> is not within any id called <i>'named-id'</i></p>
		<br>
	</li>
	<li>
		<h4>css_in_page(css, flag=true))</h4>
		<p>This method will check that the class or id supplied is displayed somewhere on the page. If <i>flag=false</i> is set, then the method will check that the class or id supplied is not displayed anywhere on the page.</p>
		<p>Examples:</p>
		<h4><i>css_in_page('#my-css')</i></h4><p>Check that a css selector with id <i>'my-css'</i> is in the page</p>
		<h4><i>css_in_page('.my-css', false)</i></h4><p>Check that an css selector with a class <i>'my-css'</i> is NOT in the page</p>
		<br>
	</li>
	<li>
		<h4>css_in_section(css1, css2, flag=true)</h4>
		<p>This method will check that the <i>'css2'</i> selector is nested within a another <i>'css1'</i> selector. If <i>flag=false</i> is set, then the method will check that the <i>'css2'</i> selector is not within the <i>'css1'</i> selector. This method is good if you want to check for nested css selectors as if often the case.</p>
		<p>Examples:</p>
		<h4><i>css_in_section('.my-css1', '#my-css2')</i></h4><p>Check the id <i>'my-css2'</i> is nested in class <i>'my-css1'</i></p>
		<h4><i>css_in_section('#my-css1', '.my-css2', false)</i></h4><p>Check the class <i>'my-css2'</i> is NOT nested within the id <i>'my-css1'</i></p>
		<br>
	</li>
	<li>
		<h4>image_in_section(section, image, count, flag=true)</h4>
		<p>This method will check that the number of <i>'image'</i>(s) in the <i>'section'</i> is equal to <i>'count'</i>. If <i>flag=false</i> is set, then the method will check the number of <i>'image'</i>(s) in the <i>'section'</i> is not equal to <i>'count'</i>. If you just want to check that a particular <i>'image'</i> is in a particluar css selector <i>'section'</i> then pass in value of 1 for the <i>'count'</i> argument.</p>
		<p>Examples:</p>
		<h4><i>image_in_section('.my-css', 'my-image.jpg', 1)</i></h4><p>Check there is exactly one <i>'my-image.jpg'</i> image within a class <i>'my-css'</i></p>
		<h4><i>image_in_section('#my-css', 'my-image.jpg', 1, false)</i></h4><p>Check there is NOT a <i>'my-image.jpg'</i> image within an id <i>'my-css'</i></p>
		<h4><i>image_in_section('#my-css', 'my-image.jpg', 3, false)</i></h4><p>Check there are  3 <i>'my-image.jpg'</i> image's within an id <i>'my-css'</i></p>
		<br>
	</li>

</ol>

<h2>License</h2>

<p>Page-Right is released under the <a href="http://www.opensource.org/licenses/MIT" target="_blank">MIT License</a>.</p>

<a href="https://www.omniref.com/ruby/gems/page-right"><img src="https://www.omniref.com/ruby/gems/page-right.png" alt="page-right API Documentation" /></a>