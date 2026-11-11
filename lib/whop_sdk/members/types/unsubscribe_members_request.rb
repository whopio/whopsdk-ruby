# frozen_string_literal: true

module Whop_sdk
  module Members
    module Types
      class UnsubscribeMembersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :token, -> { String }, optional: false, nullable: false
      end
    end
  end
end
