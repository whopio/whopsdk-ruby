# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class CreateResolutionCenterCasesRequest < Internal::Types::Model
        field :attachments, -> { Internal::Types::Array[Whop_sdk::ResolutionCenterCases::Types::CreateResolutionCenterCasesRequestAttachmentsItem] }, optional: true, nullable: false

        field :message, -> { String }, optional: false, nullable: false

        field :reason, -> { Whop_sdk::ResolutionCenterCases::Types::CreateResolutionCenterCasesRequestReason }, optional: false, nullable: false

        field :receipt_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
