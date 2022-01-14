require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
def setup 
      @article = articles(:one)
end
   test "should get index" do
     get articles_url
     assert_response :success
     assert_select 'h1', 'Articles'
     assert_select 'li', Article.count
   end
test "should get show" do
      # get article_url(@article)
      get "/articles/#{@article.id}"
      assert_response :success
      assert_select 'h1', @article.title
      assert_select 'p', @article.body
end

end
