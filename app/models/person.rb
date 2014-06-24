class Person < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :defining_feature, presence: true

  def self.search_features(keyword)
    Person.find_by_defining_feature(keyword)
  end
end
