# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class CreateResolutionCenterCasesRequestAnswersItem < Internal::Types::Model
        field :attachments, -> { Internal::Types::Array[Whop_sdk::ResolutionCenterCases::Types::CreateResolutionCenterCasesRequestAnswersItemAttachmentsItem] }, optional: true, nullable: false

        field :question, -> { Whop_sdk::ResolutionCenterCases::Types::CreateResolutionCenterCasesRequestAnswersItemQuestion }, optional: false, nullable: false

        field :value, -> { String }, optional: true, nullable: false
      end
    end
  end
end
