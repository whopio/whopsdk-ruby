# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class ListRecipientsTransfersRequest < Internal::Types::Model
        field :origin_id, -> { String }, optional: false, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
