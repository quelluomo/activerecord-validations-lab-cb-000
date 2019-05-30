class Post < ActiveRecord::Base
validates :title, presence: true
validates :content, length: { minimum: 250 }
validates :summary, length: { maximum: 250 }
validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
validate :clickbait

  def clickbait
    if !self.title == nil &&
       !self.title.include?("Won't Believe") ||
       !self.title.include?("Secret") ||
       !self.title.include?("Guess") ||
       !self.title.match(/Top\s\d+/)
    errors.add(:title, "Not a clickbait-y title")
    end
  end


end
