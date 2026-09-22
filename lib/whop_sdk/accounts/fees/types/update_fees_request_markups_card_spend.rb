# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Fees
      module Types
        # The markup on card purchases settled by the connected account. `null` clears the custom markup.
        class UpdateFeesRequestMarkupsCardSpend < Internal::Types::Model
          field :fixed, -> { Integer }, optional: true, nullable: false

          field :percentage, -> { Integer }, optional: true, nullable: false
        end
      end
    end
  end
end
