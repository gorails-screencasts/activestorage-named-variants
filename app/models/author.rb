class Author < ApplicationRecord
  has_many :posts

  has_one_attached :avatar do |attachable|
    attachable.variant :thumbnail, resize_to_fill: [100, 100], preprocessed: true
  end
end
