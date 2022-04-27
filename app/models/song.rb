class Song < ApplicationRecord
  belongs_to :artist

  scope :only_public, -> { where(status: 'published') }
end
