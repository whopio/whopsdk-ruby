# frozen_string_literal: true

module Whop_sdk
  module ExternalAccounts
    module Partners
      module Types
        class DeletePartnersRequest < Internal::Types::Model
          field :external_account_id, -> { String }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false

          field :account_id, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
