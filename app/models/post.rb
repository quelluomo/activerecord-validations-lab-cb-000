class Post < ActiveRecord::Base
validates :title, uniqueness: true
validates :content, length: { minimum: 250 }
end
