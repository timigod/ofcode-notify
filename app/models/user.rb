class User < ApplicationRecord
  validates_uniqueness_of :uid


end
