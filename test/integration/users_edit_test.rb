require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
  	@users = users(:john)
  end

  test "unsuccessful edit"  do 
  	get edit_user_path(@user)
  	assert_template 'users/edit'
  	patch user_path(@user), user: { name: "", email: "foo@invalid", password: "foo", password_confirmation: "bar"}
  	assert_not flash.empty?
  	assert_redirected to @user
  	@user.reload
  	assert_equal name, @user.name
  	assert_equal email, @user.email 	
  end

  test "successful edit" do
  	log_in_as(@user)
  	get edit_user_path(@user)
  end	
end
