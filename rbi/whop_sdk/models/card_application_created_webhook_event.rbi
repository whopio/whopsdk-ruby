# typed: strong

module WhopSDK
  module Models
    class CardApplicationCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CardApplicationCreatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # The dated API version (Api-Version-Date) the payload is serialized to
      sig { returns(T.nilable(String)) }
      attr_accessor :api_version_date

      sig { returns(WhopSDK::CardApplicationCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::CardApplicationCreatedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      # The account ID that this webhook event is associated with
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # For some `.updated` events, the old values of the payload fields that changed,
      # keyed by field name. Omitted when no capture is available for the event
      sig { returns(T.nilable(T.anything)) }
      attr_reader :previous_attributes

      sig { params(previous_attributes: T.anything).void }
      attr_writer :previous_attributes

      sig do
        params(
          id: String,
          api_version_date: T.nilable(String),
          data: WhopSDK::CardApplicationCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          account_id: T.nilable(String),
          previous_attributes: T.anything,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # The dated API version (Api-Version-Date) the payload is serialized to
        api_version_date:,
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The account ID that this webhook event is associated with
        account_id: nil,
        # For some `.updated` events, the old values of the payload fields that changed,
        # keyed by field name. Omitted when no capture is available for the event
        previous_attributes: nil,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"card_application.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::CardApplicationCreatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol,
            account_id: T.nilable(String),
            previous_attributes: T.anything
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CardApplicationCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Card application ID, prefixed `ciac_`.
        sig { returns(String) }
        attr_accessor :id

        # URL where the applicant completes additional identity verification.
        sig { returns(T.nilable(String)) }
        attr_accessor :hosted_url

        sig do
          returns(
            WhopSDK::CardApplicationCreatedWebhookEvent::Data::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        # The application status.
        sig do
          returns(
            WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          params(
            id: String,
            hosted_url: T.nilable(String),
            object:
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Object::OrSymbol,
            status:
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Card application ID, prefixed `ciac_`.
          id:,
          # URL where the applicant completes additional identity verification.
          hosted_url:,
          object:,
          # The application status.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              hosted_url: T.nilable(String),
              object:
                WhopSDK::CardApplicationCreatedWebhookEvent::Data::Object::TaggedSymbol,
              status:
                WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::CardApplicationCreatedWebhookEvent::Data::Object
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD_APPLICATION =
            T.let(
              :card_application,
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CardApplicationCreatedWebhookEvent::Data::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The application status.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :approved,
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          MANUAL_REVIEW =
            T.let(
              :manual_review,
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          DENIED =
            T.let(
              :denied,
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          LOCKED =
            T.let(
              :locked,
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          NEEDS_VERIFICATION =
            T.let(
              :needs_verification,
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          NEEDS_INFORMATION =
            T.let(
              :needs_information,
              WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::CardApplicationCreatedWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
