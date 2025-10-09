# frozen_string_literal: true

module Whopsdk
  module Resources
    class Users
      # Retrieves a user by ID or username
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::UserRetrieveResponse]
      #
      # @see Whopsdk::Models::UserRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["users/%1$s", id],
          model: Whopsdk::Models::UserRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Whopsdk::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
