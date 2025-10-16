# typed: strong

module WhopSDK
  module Models
    class ShipmentListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ShipmentListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # The ID of the company
      sig { returns(T.nilable(String)) }
      attr_accessor :company_id

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The ID of the payment
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_id

      # The ID of the user
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          payment_id: T.nilable(String),
          user_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The ID of the company
        company_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ID of the payment
        payment_id: nil,
        # The ID of the user
        user_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: T.nilable(String),
            before: T.nilable(String),
            company_id: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            payment_id: T.nilable(String),
            user_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
