# frozen_string_literal: true

module WhopSDK
  module Resources
    class Ledgers
      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
