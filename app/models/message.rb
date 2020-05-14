class Message < ApplicationRecord
 validates :body, :sender, :posted_at, presence: true
end
