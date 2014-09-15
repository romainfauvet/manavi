class Product < ActiveRecord::Base

  belongs_to :category

  delegate :name, to: :category, prefix: true, allow_nil: true
end
