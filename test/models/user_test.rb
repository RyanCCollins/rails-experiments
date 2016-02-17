require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@emample.com")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should be preset" do
    @user.name = "        "
    assert_not @user.valid?
  end
end
