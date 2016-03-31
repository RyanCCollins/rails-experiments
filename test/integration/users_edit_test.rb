require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:ryan)
  end
  test 'unsuccessful edit' do
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), user: { name: '',
                                    email: 'ryan@bah',
                                    password: 'foo',
                                    password_confirmation: 'bar' }
  end
end
