# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class AppealResolutionCenterCasesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :attachments, -> { Internal::Types::Array[Whop_sdk::ResolutionCenterCases::Types::AppealResolutionCenterCasesRequestAttachmentsItem] }, optional: true, nullable: false

        field :message, -> { String }, optional: false, nullable: false
      end
    end
  end
end
