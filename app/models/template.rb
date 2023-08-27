class Template < ApplicationRecord
  has_many :emails, dependent: :destroy
end
