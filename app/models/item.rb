class Item < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :user, presence: true
  default_scope { order('updated_at DESC') }
  include ItemsHelper # time_remaining and time_since_creation
end
