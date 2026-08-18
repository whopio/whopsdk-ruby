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

      # The unique identifier of the company to list experiences for.
      sig { returns(String) }
      attr_accessor :company_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Filter to only experiences powered by this app identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :app_id

      sig { params(app_id: String).void }
      attr_writer :app_id

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Only return experiences created after this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # Only return experiences created before this timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # Filter to only experiences attached to this product identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :product_id

      sig { params(product_id: String).void }
      attr_writer :product_id

      sig do
        params(
          company_id: String,
          after: String,
          app_id: String,
          before: String,
          created_after: Time,
          created_before: Time,
          first: Integer,
          last: Integer,
          product_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to list experiences for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Filter to only experiences powered by this app identifier.
        app_id: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return experiences created after this timestamp.
        created_after: nil,
        # Only return experiences created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter to only experiences attached to this product identifier.
        product_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            after: String,
            app_id: String,
            before: String,
            created_after: Time,
            created_before: Time,
            first: Integer,
            last: Integer,
            product_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
