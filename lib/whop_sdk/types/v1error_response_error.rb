# frozen_string_literal: true

module Whop_sdk
  module Types
    class V1ErrorResponseError < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: false, nullable: false
    end
  end
end
