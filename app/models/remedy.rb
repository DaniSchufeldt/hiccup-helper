class Remedy < ActiveRecord::Base
  validates :description, presence: true
end
