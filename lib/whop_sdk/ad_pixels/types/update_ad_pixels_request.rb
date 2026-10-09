# frozen_string_literal: true

module Whop_sdk
  module AdPixels
    module Types
      class UpdateAdPixelsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :access_token, -> { String }, optional: false, nullable: false
      end
    end
  end
end
