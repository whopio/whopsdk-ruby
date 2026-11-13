# frozen_string_literal: true

module Whop_sdk
  module Members
    module Types
      class UpdateMembersRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Whop_sdk::Members::Types::UpdateMembersRequestMetadataValue] }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :unsubscribe_status, -> { Whop_sdk::Members::Types::UpdateMembersRequestUnsubscribeStatus }, optional: true, nullable: false
      end
    end
  end
end
