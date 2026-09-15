# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Links
      module Types
        class ListLinksRequest < Internal::Types::Model
          field :status, -> { Whop_sdk::Partners::Links::Types::ListLinksRequestStatusItem }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
