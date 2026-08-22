# frozen_string_literal: true

module Whop_sdk
  module Users
    module Passkeys
      module Types
        class ListPasskeysRequest < Internal::Types::Model
          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false

          field :order, -> { Whop_sdk::Users::Passkeys::Types::ListPasskeysRequestOrder }, optional: true, nullable: false

          field :direction, -> { Whop_sdk::Users::Passkeys::Types::ListPasskeysRequestDirection }, optional: true, nullable: false
        end
      end
    end
  end
end
