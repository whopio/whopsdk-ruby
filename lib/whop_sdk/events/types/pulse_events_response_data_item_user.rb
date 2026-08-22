# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # Coarse location, shaped like the event `user` block. It belongs to the owner of the wallet the money moved into
      # or out of — the party the event is about, never their counterparty. Omitted entirely when nothing is known.
      class PulseEventsResponseDataItemUser < Internal::Types::Model
        field :city, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false
      end
    end
  end
end
