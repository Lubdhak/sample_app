# This is Active Record model

class Post < ApplicationRecord
    validates :title,presence: true
    validates :body,presence: true
end
