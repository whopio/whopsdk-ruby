# frozen_string_literal: true

module WhopSDK
  module Resources
    class Entries
      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
