# frozen_string_literal: true

module Whop_sdk
  module Types
    class LivestreamRecapMessage < Internal::Types::Model
      field :content, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :user_name, -> { String }, optional: false, nullable: true
    end
  end
end
