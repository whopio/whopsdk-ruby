# typed: strong

module WhopSDK
  module Models
    class PageInfo < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::PageInfo, WhopSDK::Internal::AnyHash) }

      # When paginating forwards, the cursor to continue.
      sig { returns(T.nilable(String)) }
      attr_accessor :end_cursor

      # When paginating forwards, are there more items?
      sig { returns(T::Boolean) }
      attr_accessor :has_next_page

      # When paginating backwards, are there more items?
      sig { returns(T::Boolean) }
      attr_accessor :has_previous_page

      # When paginating backwards, the cursor to continue.
      sig { returns(T.nilable(String)) }
      attr_accessor :start_cursor

      # Information about pagination in a connection.
      sig do
        params(
          end_cursor: T.nilable(String),
          has_next_page: T::Boolean,
          has_previous_page: T::Boolean,
          start_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # When paginating forwards, the cursor to continue.
        end_cursor:,
        # When paginating forwards, are there more items?
        has_next_page:,
        # When paginating backwards, are there more items?
        has_previous_page:,
        # When paginating backwards, the cursor to continue.
        start_cursor:
      )
      end

      sig do
        override.returns(
          {
            end_cursor: T.nilable(String),
            has_next_page: T::Boolean,
            has_previous_page: T::Boolean,
            start_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
