class User < ApplicationRecord
    validates :first_name, presence: true, length: { maximum: 75 }
    validates :last_name, presence: true, length: { maximum: 75 }
    VALID_DATE_REGEX = /(?<month>\d{2,2})\/(?<day>\d{2,2})/
    validates :birthday, presence: true, format: { with: VALID_DATE_REGEX }, length: { maximum: 5,minimum: 5 }
end