require './test/test_helper'

class PageDoesntExistTest < CapybaraTestCase
  def test_user_can_see_if_page_doesnt_exist
    visit '/blog'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
