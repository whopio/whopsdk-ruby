# frozen_string_literal: true

module WhopSDK
  module Resources
    # An Audience represents a customer list uploaded to Whop for ad targeting.
    # Audiences belong to an account and sync to supported ad platforms as custom
    # audiences.
    #
    # Use the Audiences API to create audiences from CSV uploads, monitor processing
    # status, and list or delete audiences for an account. Created audiences are
    # usable for targeting after processing reaches `ready` or `partial`.
    class Audiences
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::AudienceCreateParams} for more details.
      #
      # Creates an audience from an uploaded customer identity CSV file and starts
      # processing it.
      #
      # @overload create(account_id:, column_mapping:, file_id:, name:, request_options: {})
      #
      # @param account_id [String] Account ID, prefixed `biz_`.
      #
      # @param column_mapping [WhopSDK::Models::AudienceCreateParams::ColumnMapping] Maps supported identity fields to CSV column headers. Map at least one of `email
      #
      # @param file_id [String] Direct upload ID from the standard media upload endpoint.
      #
      # @param name [String] Audience display name.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Audience]
      #
      # @see WhopSDK::Models::AudienceCreateParams
      def create(params)
        parsed, options = WhopSDK::AudienceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "audiences",
          body: parsed,
          model: WhopSDK::Audience,
          options: options
        )
      end

      # Lists uploaded customer-list audiences for an account. Pass `audience_id` to
      # return a specific audience.
      #
      # @overload list(account_id:, after: nil, audience_id: nil, first: nil, request_options: {})
      #
      # @param account_id [String] Account ID, prefixed `biz_`.
      #
      # @param after [String] Cursor for the next page of audiences.
      #
      # @param audience_id [String] Audience ID, prefixed `adaud_`, used to filter the response to one audience.
      #
      # @param first [Integer] Number of audiences to return. Defaults to 20; maximum 100.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Audience>]
      #
      # @see WhopSDK::Models::AudienceListParams
      def list(params)
        parsed, options = WhopSDK::AudienceListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "audiences",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Audience,
          options: options
        )
      end

      # Deletes an audience so it is no longer available for targeting.
      #
      # @overload delete(audience_id, request_options: {})
      #
      # @param audience_id [String] Audience ID, prefixed `adaud_`.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::AudienceDeleteResponse]
      #
      # @see WhopSDK::Models::AudienceDeleteParams
      def delete(audience_id, params = {})
        @client.request(
          method: :delete,
          path: ["audiences/%1$s", audience_id],
          model: WhopSDK::Models::AudienceDeleteResponse,
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
