# This is Active Record model

class Mytable < ApplicationRecord
    validates :title,presence: true
    validates :body,presence: true
end
