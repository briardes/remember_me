require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'user has a name' do
    user = User.create(name: 'test')
    assert user.name = 'test'
  end
end
