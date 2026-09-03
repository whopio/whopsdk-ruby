# frozen_string_literal: true

module Whop_sdk
  module Types
    # The refund policy document uploaded as dispute evidence. Null if no refund policy has been provided.
    class DisputeLegacyRefundPolicyAttachment < Internal::Types::Model
      field :content_type, -> { String }, optional: false, nullable: true

      field :filename, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
