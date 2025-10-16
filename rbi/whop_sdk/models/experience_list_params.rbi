# typed: strong

module WhopSDK
  module Models
    class ExperienceListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ExperienceListParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company to filter experiences by
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # The ID of the app to filter experiences by
      sig { returns(T.nilable(String)) }
      attr_accessor :app_id

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      # The ID of the product to filter experiences by
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          app_id: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          product_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to filter experiences by
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # The ID of the app to filter experiences by
        app_id: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ID of the product to filter experiences by
        product_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: T.nilable(String),
            app_id: T.nilable(String),
            before: T.nilable(String),
            first: T.nilable(Integer),
            last: T.nilable(Integer),
            product_id: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
