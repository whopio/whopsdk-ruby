# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserProfilePicture < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
