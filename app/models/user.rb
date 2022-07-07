class User < ApplicationRecord
    validates :first_name, presence: true, length: { maximum: 75 }
    validates :last_name, presence: true, length: { maximum: 75 }
    VALID_DATE_REGEX = /\A((0?1?1){1}|(0?1?2){1}|([0]?3|4|5|6|7|8|9))\/((0?1?2?3?1){1}|(0?1?2?(2|3|4|5|6|7|8|9|0))|(30))\z/
    validates :birthday, presence: true, format: { with: VALID_DATE_REGEX }, length: { maximum: 5,minimum: 5 }
end