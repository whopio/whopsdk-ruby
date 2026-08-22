# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class ListVerificationsResponseDataItemRequiredDocumentsItem < Internal::Types::Model
        field :document, -> { String }, optional: true, nullable: false

        field :rejection_reason, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemRequiredDocumentsItemStatus }, optional: true, nullable: false
      end
    end
  end
end
