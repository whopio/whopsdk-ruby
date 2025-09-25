# frozen_string_literal: true

module Whopsdk
  module Resources
    class AccessPasses
      # Retrieves an access pass by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::AccessPass]
      #
      # @see Whopsdk::Models::AccessPassRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["access_passes/%1$s", id],
          model: Whopsdk::AccessPass,
          options: params[:request_options]
        )
      end

      # Lists access passes for a company
      #
      # @overload list(company_id:, access_pass_type: nil, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to filter access passes by
      #
      # @param access_pass_type [Symbol, Whopsdk::Models::AccessPassListParams::AccessPassType, nil] The type of access passes to filter by
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Internal::CursorPage<Whopsdk::Models::AccessPassListItem, nil>]
      #
      # @see Whopsdk::Models::AccessPassListParams
      def list(params)
        parsed, options = Whopsdk::AccessPassListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "access_passes",
          query: parsed,
          page: Whopsdk::Internal::CursorPage,
          model: Whopsdk::AccessPassListItem,
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
