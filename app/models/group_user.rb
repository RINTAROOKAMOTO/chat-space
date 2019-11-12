Learn more or give us feedback
class GroupUser < ApplicationRecord
  belongs_to :group
  belongs_to :user
end