class Category < ApplicationRecord
  belongs_to :categoriable, polymorphic: true
end
