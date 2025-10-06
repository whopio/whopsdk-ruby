# typed: strong

module Whopsdk
  module Models
    class ForumPostListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::ForumPostListParams, Whopsdk::Internal::AnyHash)
        end

      # The ID of the experience to list forum posts for
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

      # The ID of the parent post to list forum post comments for
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_id

      # Set to true to only return pinned posts
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
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the experience to list forum posts for
        experience_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ID of the parent post to list forum post comments for
        parent_id: nil,
        # Set to true to only return pinned posts
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
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
