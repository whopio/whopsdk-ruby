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

      # Check if a user has access (and their access level) to a resource
      #
      # @overload check_access(resource_id, id:, request_options: {})
      #
      # @param resource_id [String]
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::UserCheckAccessResponse]
      #
      # @see Whopsdk::Models::UserCheckAccessParams
      def check_access(resource_id, params)
        parsed, options = Whopsdk::UserCheckAccessParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["users/%1$s/access/%2$s", id, resource_id],
          model: Whopsdk::Models::UserCheckAccessResponse,
          options: options
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
