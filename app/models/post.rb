class Post < ActiveRecord::Base
validates :title, presence: true
validates :content, length: { minimum: 250 }
validates :summary, length: { maximum: 250 }
validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
validate :clickbait

  def clickbait
    unless self.title.include?(
      "Won't Believe" || "Secret" || "Guess" || "Top"
      )
    error.add(:clickbaity, "Not a clickbait-y title")
  end
  end
end
