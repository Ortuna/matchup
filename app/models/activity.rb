class Activity < ActiveRecord::Base
  self.primary_key = :hash_id
  has_many :students
end
