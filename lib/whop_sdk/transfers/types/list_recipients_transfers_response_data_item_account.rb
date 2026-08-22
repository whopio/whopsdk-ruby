# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class ListRecipientsTransfersResponseDataItemAccount < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :logo_url, -> { String }, optional: false, nullable: true

        field :route, -> { String }, optional: false, nullable: true

        field :title, -> { String }, optional: false, nullable: true
      end
    end
  end
end
