require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test 'person has a name' do
    person = people(:one)
    assert person.name == 'MyString'
  end

  test 'person has a defining_feature' do
    person = people(:one)
    assert person.defining_feature == 'MyString'
  end

  test 'person can be a friend' do
    person = people(:two)
    assert person.friend
  end

  test 'person can be searched' do
    Person.create!(defining_feature: 'Likes Cats', name: 'MyString')
    assert_equal 1, Person.search_features('Likes Cats').count
  end
end
