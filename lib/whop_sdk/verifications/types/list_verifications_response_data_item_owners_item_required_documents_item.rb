# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class ListVerificationsResponseDataItemOwnersItemRequiredDocumentsItem < Internal::Types::Model
        field :document, -> { String }, optional: true, nullable: false

        field :rejection_reason, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemOwnersItemRequiredDocumentsItemStatus }, optional: true, nullable: false
      end
    end
  end
end
