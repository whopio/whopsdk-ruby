# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class AcceptResolutionCenterCasesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :attachments, -> { Internal::Types::Array[Whop_sdk::ResolutionCenterCases::Types::AcceptResolutionCenterCasesRequestAttachmentsItem] }, optional: true, nullable: false

        field :message, -> { String }, optional: true, nullable: false

        field :terminate_membership, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
