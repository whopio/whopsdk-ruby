# frozen_string_literal: true

module WhopSDK
  module Resources
    class Companies
      # Retrieves an company by ID or its url route
      #
      # Required permissions:
      #
      # - `company:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Company]
      #
      # @see WhopSDK::Models::CompanyRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["companies/%1$s", id],
          model: WhopSDK::Company,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
