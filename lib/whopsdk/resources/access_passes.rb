# frozen_string_literal: true

module Whopsdk
  module Resources
    class AccessPasses
      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
