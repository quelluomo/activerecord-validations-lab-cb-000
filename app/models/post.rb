class Post < ActiveRecord::Base
validates :title, uniqueness: true
validates :content, length: { minimum: 250 }
validates :summary, length: { minimum: 250 }
validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
