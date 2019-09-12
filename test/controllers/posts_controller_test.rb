require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

test "admin should delete any post" do
  user = User.roles.index(0)
  sign_in(user)
  assert_difference('Post.count', -1) do
    delete post_path(posts(:one))
  end

end





  # setup do
  #   @post = posts(:one)
  # end
  #
  # test "should get index" do
  #   get posts_url
  #   assert_response :success
  # end
  #
  # test "should get new" do
  #   get new_post_url
  #   assert_response :success
  # end
  #
  # test "should create post" do
  #   assert_difference('Post.count') do
  #     post posts_url, params: { post: { content: @post.content, title: @post.title, user_id: @post.user_id } }
  #   end
  #
  #   assert_redirected_to post_url(Post.last)
  # end
  #
  # test "should show post" do
  #   get post_url(@post)
  #   assert_response :success
  # end
  #
  # test "should get edit" do
  #   get edit_post_url(@post)
  #   assert_response :success
  # end
  #
  # test "should update post" do
  #   patch post_url(@post), params: { post: { content: @post.content, title: @post.title, user_id: @post.user_id } }
  #   assert_redirected_to post_url(@post)
  # end
  #
  # test "should destroy post" do
  #   assert_difference('Post.count', -1) do
  #     delete post_url(@post)
  #   end
  #
  #   assert_redirected_to posts_url
  # end
end
