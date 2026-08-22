# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdMessagingConfig < Internal::Types::Model
      field :keyword, -> { String }, optional: false, nullable: true

      field :message, -> { String }, optional: false, nullable: true
    end
  end
end
