# typed: strong

module WhopSDK
  module Models
    class SocialAccountPostsParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SocialAccountPostsParams, WhopSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # The Account (a biz\_ identifier) the social account is connected to.
      sig { returns(String) }
      attr_accessor :account_id

      # Cursor to fetch the page after (from page_info.end_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # The number of posts to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Return only the single post with this platform id, instead of the full list.
      sig { returns(T.nilable(String)) }
      attr_reader :post_id

      sig { params(post_id: String).void }
      attr_writer :post_id

      sig do
        params(
          id: String,
          account_id: String,
          after: String,
          first: Integer,
          post_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The Account (a biz\_ identifier) the social account is connected to.
        account_id:,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # The number of posts to return.
        first: nil,
        # Return only the single post with this platform id, instead of the full list.
        post_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            after: String,
            first: Integer,
            post_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
