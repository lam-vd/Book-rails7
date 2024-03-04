require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'microposts/index'
    assert_select 'a[href=?]', root_path, count: 2
    get users_path
    assert_select 'title', full_title('Users | Ruby on Rails Tutorial Sample App')
  end
end
