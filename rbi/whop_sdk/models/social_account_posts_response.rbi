# typed: strong

module WhopSDK
  module Models
    class SocialAccountPostsResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::SocialAccountPostsResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(T::Array[WhopSDK::SocialAccountPost]) }
      attr_accessor :data

      sig { returns(WhopSDK::Models::SocialAccountPostsResponse::PageInfo) }
      attr_reader :page_info

      sig do
        params(
          page_info:
            WhopSDK::Models::SocialAccountPostsResponse::PageInfo::OrHash
        ).void
      end
      attr_writer :page_info

      sig do
        params(
          data: T::Array[WhopSDK::SocialAccountPost::OrHash],
          page_info:
            WhopSDK::Models::SocialAccountPostsResponse::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, page_info:)
      end

      sig do
        override.returns(
          {
            data: T::Array[WhopSDK::SocialAccountPost],
            page_info: WhopSDK::Models::SocialAccountPostsResponse::PageInfo
          }
        )
      end
      def to_hash
      end

      class PageInfo < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::SocialAccountPostsResponse::PageInfo,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :end_cursor

        sig { returns(T::Boolean) }
        attr_accessor :has_next_page

        sig do
          params(
            end_cursor: T.nilable(String),
            has_next_page: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(end_cursor:, has_next_page:)
        end

        sig do
          override.returns(
            { end_cursor: T.nilable(String), has_next_page: T::Boolean }
          )
        end
        def to_hash
        end
      end
    end
  end
end
