require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'user has a name' do
    user = users(:one)
    assert user.name == 'MyString'
  end
end
