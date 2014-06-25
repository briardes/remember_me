class Person < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :defining_feature, presence: true

  def self.search_features(keyword)
    Person.where(defining_feature: keyword)
  end
end
