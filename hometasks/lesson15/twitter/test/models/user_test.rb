require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "user is saved" do
  	user = User.new(nickname: 'qweqwe', email: "qwe@qwe.qwe")
  	assert user.save
  end

  test "should not save user without email" do
    user = User.new(nickname: "asdasd")
  	assert_not user.save
  end
end
