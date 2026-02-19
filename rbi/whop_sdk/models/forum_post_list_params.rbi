# typed: strong

module WhopSDK
  module Models
    class ForumPostListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ForumPostListParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the experience to list forum posts for.
      sig { returns(String) }
      attr_accessor :experience_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The unique identifier of a parent post to list comments for. When set, returns
      # replies to that post.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_id

      # Whether to filter for only pinned posts. Set to true to return only pinned
      # posts.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :pinned

      sig do
        params(
          experience_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          parent_id: T.nilable(String),
          pinned: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the experience to list forum posts for.
        experience_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The unique identifier of a parent post to list comments for. When set, returns
        # replies to that post.
        parent_id: nil,
        # Whether to filter for only pinned posts. Set to true to return only pinned
        # posts.
        pinned: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            experience_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            parent_id: T.nilable(String),
            pinned: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
