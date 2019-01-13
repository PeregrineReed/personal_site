require './test/test_helper'

class AboutMeTest < CapybaraTestCase
  def test_it_has_an_about_me_page
    visit '/about'

    assert page.has_content?("About Me!\nHere's some stuff to know.")
    assert_equal 200, page.status_code
  end
end
