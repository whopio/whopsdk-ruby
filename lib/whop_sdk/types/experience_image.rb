# frozen_string_literal: true

module Whop_sdk
  module Types
    # The custom logo image for this experience. Null if no custom logo has been uploaded.
    class ExperienceImage < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
