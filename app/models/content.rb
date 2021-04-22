class Content < ApplicationRecord
  with_options presence: true do
    validates :nickname, :study_rule, :text
  end
end
