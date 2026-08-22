# frozen_string_literal: true

module Whop_sdk
  module Users
    module Passkeys
      module Types
        class ListPasskeysResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::Passkey] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Users::Passkeys::Types::ListPasskeysResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
