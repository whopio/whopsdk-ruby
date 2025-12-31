# typed: strong

module WhopSDK
  module Models
    class PayoutMethodCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::PayoutMethodCreatedWebhookEvent,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID for every single webhook request
      sig { returns(String) }
      attr_accessor :id

      # The API version for this webhook
      sig { returns(Symbol) }
      attr_accessor :api_version

      # An object representing an user's setup payout destination.
      sig { returns(WhopSDK::PayoutMethodCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: WhopSDK::PayoutMethodCreatedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp in ISO 8601 format that the webhook was sent at on the server
      sig { returns(Time) }
      attr_accessor :timestamp

      # The webhook event type
      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          data: WhopSDK::PayoutMethodCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          api_version: Symbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID for every single webhook request
        id:,
        # An object representing an user's setup payout destination.
        data:,
        # The timestamp in ISO 8601 format that the webhook was sent at on the server
        timestamp:,
        # The API version for this webhook
        api_version: :v1,
        # The webhook event type
        type: :"payout_method.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            data: WhopSDK::PayoutMethodCreatedWebhookEvent::Data,
            timestamp: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the payout token
        sig { returns(String) }
        attr_accessor :id

        # The currency code of the payout destination. This is the currency that payouts
        # will be made in for this token.
        sig { returns(String) }
        attr_accessor :currency

        # The payout destination associated with the payout token
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination
            )
          )
        end
        attr_reader :destination

        sig do
          params(
            destination:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::OrHash
              )
          ).void
        end
        attr_writer :destination

        # An optional nickname for the payout token to help the user identify it. This is
        # not used by the provider and is only for the user's reference.
        sig { returns(T.nilable(String)) }
        attr_accessor :nickname

        # An object representing an user's setup payout destination.
        sig do
          params(
            id: String,
            currency: String,
            destination:
              T.nilable(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::OrHash
              ),
            nickname: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the payout token
          id:,
          # The currency code of the payout destination. This is the currency that payouts
          # will be made in for this token.
          currency:,
          # The payout destination associated with the payout token
          destination:,
          # An optional nickname for the payout token to help the user identify it. This is
          # not used by the provider and is only for the user's reference.
          nickname:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              currency: String,
              destination:
                T.nilable(
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination
                ),
              nickname: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Destination < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination,
                WhopSDK::Internal::AnyHash
              )
            end

          # The category of the payout destination
          sig do
            returns(
              WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category::TaggedSymbol
            )
          end
          attr_accessor :category

          # The country code of the payout destination
          sig { returns(String) }
          attr_accessor :country_code

          # The name of the payer associated with the payout destination
          sig { returns(String) }
          attr_accessor :name

          # The payout destination associated with the payout token
          sig do
            params(
              category:
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category::OrSymbol,
              country_code: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The category of the payout destination
            category:,
            # The country code of the payout destination
            country_code:,
            # The name of the payer associated with the payout destination
            name:
          )
          end

          sig do
            override.returns(
              {
                category:
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category::TaggedSymbol,
                country_code: String,
                name: String
              }
            )
          end
          def to_hash
          end

          # The category of the payout destination
          module Category
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CRYPTO =
              T.let(
                :crypto,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category::TaggedSymbol
              )
            RTP =
              T.let(
                :rtp,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category::TaggedSymbol
              )
            NEXT_DAY_BANK =
              T.let(
                :next_day_bank,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category::TaggedSymbol
              )
            BANK_WIRE =
              T.let(
                :bank_wire,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category::TaggedSymbol
              )
            DIGITAL_WALLET =
              T.let(
                :digital_wallet,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :unknown,
                WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::PayoutMethodCreatedWebhookEvent::Data::Destination::Category::TaggedSymbol
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
end
