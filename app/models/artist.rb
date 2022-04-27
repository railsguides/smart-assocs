class Artist < ApplicationRecord
  has_many :songs, -> { Thread.current[:current_user] ? all : only_public }
end
