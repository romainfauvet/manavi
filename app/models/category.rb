class Category < ActiveRecord::Base
  has_many :children, class_name: 'Category', foreign_key: 'parent_id', dependent: :destroy

  belongs_to :parent, class_name: 'Category', foreign_key: 'parent_id'

end
