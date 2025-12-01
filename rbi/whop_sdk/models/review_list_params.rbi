# typed: strong

module WhopSDK
  module Models
    class ReviewListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ReviewListParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the product
      sig { returns(String) }
      attr_accessor :product_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The minimum creation date to filter by
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_after

      # The maximum creation date to filter by
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The maximum star rating of the review (inclusive)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_stars

      # The minimum star rating of the review (inclusive)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :min_stars

      sig do
        params(
          product_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          max_stars: T.nilable(Integer),
          min_stars: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the product
        product_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The minimum creation date to filter by
        created_after: nil,
        # The maximum creation date to filter by
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The maximum star rating of the review (inclusive)
        max_stars: nil,
        # The minimum star rating of the review (inclusive)
        min_stars: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            product_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            created_after: T.nilable(Time),
            created_before: T.nilable(Time),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            max_stars: T.nilable(Integer),
            min_stars: T.nilable(Integer),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
