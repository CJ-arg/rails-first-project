require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
   test "should get index" do
     get articles_url
     assert_response :success
     assert_select 'h1', 'Hello, Rails!'

   end
end