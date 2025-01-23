class Commentt < ApplicationRecord
  belongs_to :post

  broadcasts_to :post
  belongs_to :user
end
