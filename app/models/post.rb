class Post < ApplicationRecord
    belongs_to :user, optional: true
    validates :user, presence: true
    has_many :comments, dependent: :destroy
    validates :titulo, :cuerpo, presence: true 
    validates :cuerpo, length: { minimum: 250 }
end
