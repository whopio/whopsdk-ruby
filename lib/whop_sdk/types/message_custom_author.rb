# frozen_string_literal: true

module Whop_sdk
  module Types
    class MessageCustomAuthor < Internal::Types::Model
      field :display_name, -> { String }, optional: false, nullable: true

      field :profile_picture, -> { Whop_sdk::Types::File }, optional: false, nullable: true
    end
  end
end
