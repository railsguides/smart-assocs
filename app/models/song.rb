class Song < ApplicationRecord
  belongs_to :artist

  enum :status, {draft: 'draft', published: 'published'}
  scope :only_public, -> { where(status: 'published') }
end
