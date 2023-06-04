class Stream < ApplicationRecord
  belongs_to :streamer
  has_many :categories, as: :categoriable
end
