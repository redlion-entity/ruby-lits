require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Tests "Create"
  test "user is saved" do
  	user = User.new(nickname: 'qweqwe', email: "qwe@qwe.qwe", avatar: 'https://robohash.org/marianne?size=36x36')
  	assert user.save, "Saving the user with is full data"
  end

  test "should save user without avatar" do
    user = User.new(nickname: 'qweqwe', email: "qwe@qwe.qwe")
    assert user.save
  end

  test "should not save user with a blank initial data" do
    user = User.new
    assert_not user.save
  end

  test "should not save user without nickname" do
    user = User.new(email: "qwe@qwe.qwe", avatar: 'https://robohash.org/marianne?size=36x36')
    assert_not user.save
  end

  test "should not save user without email" do
    user = User.new(nickname: 'qweqwe', avatar: 'https://robohash.org/marianne?size=36x36')
  	assert_not user.save
  end
end
