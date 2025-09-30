# frozen_string_literal: true

module Whopsdk
  module Resources
    class Companies
      # Retrieves an company by ID
      #
      # Required permissions:
      #
      # - `company:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Whopsdk::Models::Company, nil]
      #
      # @see Whopsdk::Models::CompanyRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["companies/%1$s", id],
          model: Whopsdk::Company,
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
