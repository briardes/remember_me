require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test 'person has a name' do
    person = Person.create(name: 'test')
    assert person.name = 'test'
  end

  test 'person has a defining_feature' do
    person = Person.create(defining_feature: 'test')
    assert person.defining_feature = 'test'
  end

  test 'person can be a friend' do
    person = Person.create(friend: true)
    assert person.friend = true
  end

  test 'person can be searched' do
    Person.new(defining_feature: 'Likes Cats')
    assert Person.search_features('Likes Cats')
  end
end
