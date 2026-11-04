# frozen_string_literal: true

module Whop_sdk
  module Types
    class SearchRecordPayment < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :image_url, -> { String }, optional: false, nullable: true

      field :paid_at, -> { String }, optional: false, nullable: true

      field :presentment_total, -> { Whop_sdk::Types::Money }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::ReceiptStatus }, optional: false, nullable: false

      field :substatus, -> { Whop_sdk::Types::FriendlyReceiptStatus }, optional: false, nullable: false

      field :subtitle, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: true

      field :total, -> { Whop_sdk::Types::Money }, optional: false, nullable: true
    end
  end
end
