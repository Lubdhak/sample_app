# This is model

class Mytable < ApplicationRecord
    validates :title,presence: true
    validates :body,presence: true
end
