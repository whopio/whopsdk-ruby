# typed: strong

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
      # Creates an audience from an uploaded customer identity CSV file and starts
      # processing it.
      sig do
        params(
          account_id: String,
          column_mapping: WhopSDK::AudienceCreateParams::ColumnMapping::OrHash,
          file_id: String,
          name: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Audience)
      end
      def create(
        # Account ID, prefixed `biz_`.
        account_id:,
        # Maps supported identity fields to CSV column headers. Map at least one of
        # `email` or `phone`.
        column_mapping:,
        # Direct upload ID from the standard media upload endpoint.
        file_id:,
        # Audience display name.
        name:,
        request_options: {}
      )
      end

      # Lists uploaded customer-list audiences for an account. Pass `audience_id` to
      # return a specific audience.
      sig do
        params(
          account_id: String,
          after: String,
          audience_id: String,
          first: Integer,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Internal::CursorPage[WhopSDK::Audience])
      end
      def list(
        # Account ID, prefixed `biz_`.
        account_id:,
        # Cursor for the next page of audiences.
        after: nil,
        # Audience ID, prefixed `adaud_`, used to filter the response to one audience.
        audience_id: nil,
        # Number of audiences to return. Defaults to 20; maximum 100.
        first: nil,
        request_options: {}
      )
      end

      # Deletes an audience so it is no longer available for targeting.
      sig do
        params(
          audience_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Models::AudienceDeleteResponse)
      end
      def delete(
        # Audience ID, prefixed `adaud_`.
        audience_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
