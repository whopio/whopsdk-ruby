# frozen_string_literal: true

module Whop_sdk
  module Domains
    module Types
      # Serve a Whop website on the domain. Pass `null` to stop serving it; the domain keeps its other capabilities.
      class CreateDomainsRequestWebsite < Internal::Types::Model
        field :app_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
