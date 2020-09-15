class Article < ApplicationRecord

    # adding validation
    validates :title, presence: true, uniqueness: true
    # validates :content, length: { in: 500..5000}

#custom validation method created \m/ to not include a work on title or content
    validate :does_not_contain_pete

    private
    def does_not_contain_pete
        if title.include?('pete') || title.include?('pete')
            errors.add(:title, 'title cannot contain pete')
        end

        if content.include?('pete') || content.include?('pete')
            errors.add(:title, 'content cannot contain pete')
        end
    end
end
