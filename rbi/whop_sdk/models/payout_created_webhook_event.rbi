# typed: strong

module WhopSDK
  module Models
    class PayoutCreatedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::PayoutCreatedWebhookEvent, WhopSDK::Internal::AnyHash)
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

      sig { returns(WhopSDK::PayoutCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: WhopSDK::PayoutCreatedWebhookEvent::Data::OrHash).void
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
          data: WhopSDK::PayoutCreatedWebhookEvent::Data::OrHash,
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
        type: :"payout.created"
      )
      end

      sig do
        override.returns(
          {
            id: String,
            api_version: Symbol,
            api_version_date: T.nilable(String),
            data: WhopSDK::PayoutCreatedWebhookEvent::Data,
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
              WhopSDK::PayoutCreatedWebhookEvent::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # Payout ID, prefixed `wdrl_`.
        sig { returns(String) }
        attr_accessor :id

        # The payout amount in whole currency units, as a decimal string.
        sig { returns(String) }
        attr_accessor :amount

        # When the payout was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Payout currency.
        sig { returns(String) }
        attr_accessor :currency

        # The amount delivered in the destination currency, as a decimal string. Assigned
        # when the payout is processed, so it is `null` before then and on payouts without
        # a recorded conversion.
        sig { returns(T.nilable(String)) }
        attr_accessor :destination_amount

        # Currency the funds are delivered in, taken from the payout method when the
        # payout is created. On a stablecoin payout it follows the settlement payout
        # minted alongside it — the `GET /payouts` row carrying this payout's id as
        # `payout_request_id` — and is `null` only when no settlement payout exists.
        sig { returns(T.nilable(String)) }
        attr_accessor :destination_currency

        # Estimated time the funds become available in the destination account.
        sig { returns(T.nilable(Time)) }
        attr_accessor :estimated_arrival

        # Exchange rate from the payout currency to the destination currency. Assigned
        # when the payout is processed, so it is `null` before then and on payouts without
        # a recorded rate.
        sig { returns(T.nilable(Float)) }
        attr_accessor :exchange_rate

        # Why the payout ended without paying, or why it reversed after settlement.
        # Present on failed, canceled, denied, and reversed payouts; `null` otherwise.
        sig do
          returns(T.nilable(WhopSDK::PayoutCreatedWebhookEvent::Data::Failure))
        end
        attr_reader :failure

        sig do
          params(
            failure:
              T.nilable(
                WhopSDK::PayoutCreatedWebhookEvent::Data::Failure::OrHash
              )
          ).void
        end
        attr_writer :failure

        # The fee charged for the payout, in the payout currency, as a decimal string.
        sig { returns(String) }
        attr_accessor :fee_amount

        # Who bore the payout fee: the account itself, or its parent platform.
        sig do
          returns(
            WhopSDK::PayoutCreatedWebhookEvent::Data::FeePaidBy::TaggedSymbol
          )
        end
        attr_accessor :fee_paid_by

        # Whop's markup on the provider fee, in the payout currency, as a decimal string.
        # `"0.0"` when none applies.
        sig { returns(String) }
        attr_accessor :markup_fee

        # Key-value data attached at creation and echoed on every read. At most 50 keys,
        # key names up to 40 characters, string values up to 500 characters.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # The planned net for the destination, in the payout currency: amount minus
        # fee_amount minus markup_fee when fee_paid_by is `self`; equal to amount when the
        # platform covers the fees. A payout that ends denied, canceled, or failed
        # delivered nothing — most keep the planned figure and `failure` says where the
        # funds are, but a canceled stablecoin payout can report the settled outcome
        # instead: `amount` carries what stayed in the balance, fees are zero because none
        # were charged, and `net_amount` is 0 because nothing was delivered.
        sig { returns(String) }
        attr_accessor :net_amount

        # Free-form notes attached by the payout creator, or `null` when none were
        # provided. Maximum 255 characters.
        sig { returns(T.nilable(String)) }
        attr_accessor :notes

        sig do
          returns(
            WhopSDK::PayoutCreatedWebhookEvent::Data::Object::TaggedSymbol
          )
        end
        attr_accessor :object

        # Name of the entity processing the payout.
        sig { returns(T.nilable(String)) }
        attr_accessor :payer_name

        # The saved payout method used. Requires payout:destination:read; null without it.
        sig do
          returns(
            T.nilable(WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod)
          )
        end
        attr_reader :payout_method

        sig do
          params(
            payout_method:
              T.nilable(
                WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::OrHash
              )
          ).void
        end
        attr_writer :payout_method

        # Payout request ID, prefixed `cofr_`, returned by `POST /payouts`. Match it to
        # the settled payout in `GET /payouts`. Returns `null` for payouts not created by
        # `POST /payouts`.
        sig { returns(T.nilable(String)) }
        attr_accessor :payout_request_id

        # How the payout was created. `automatic` means a scheduled auto-payout; `null` on
        # payouts created before source tracking or through internal tooling.
        sig do
          returns(
            T.nilable(
              WhopSDK::PayoutCreatedWebhookEvent::Data::Source::TaggedSymbol
            )
          )
        end
        attr_accessor :source

        # Payout delivery speed.
        sig do
          returns(WhopSDK::PayoutCreatedWebhookEvent::Data::Speed::TaggedSymbol)
        end
        attr_accessor :speed

        # Current payout status.
        sig do
          returns(
            WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The finest machine phase under `status` — for example
        # `awaiting_provider_acceptance` vs `in_transit` under `processing`, or the
        # stablecoin conversion phase under `requested`. Informational vocabulary: values
        # can be added without a version bump; `status` is the versioned contract.
        sig { returns(String) }
        attr_accessor :status_detail

        # ACH trace number the recipient's bank can use to locate this payout. Assigned
        # when the payout is submitted to the bank, so it is `null` before then and on
        # payouts not sent over ACH.
        sig { returns(T.nilable(String)) }
        attr_accessor :trace_code

        sig do
          params(
            id: String,
            amount: String,
            created_at: Time,
            currency: String,
            destination_amount: T.nilable(String),
            destination_currency: T.nilable(String),
            estimated_arrival: T.nilable(Time),
            exchange_rate: T.nilable(Float),
            failure:
              T.nilable(
                WhopSDK::PayoutCreatedWebhookEvent::Data::Failure::OrHash
              ),
            fee_amount: String,
            fee_paid_by:
              WhopSDK::PayoutCreatedWebhookEvent::Data::FeePaidBy::OrSymbol,
            markup_fee: String,
            metadata: T::Hash[Symbol, String],
            net_amount: String,
            notes: T.nilable(String),
            object: WhopSDK::PayoutCreatedWebhookEvent::Data::Object::OrSymbol,
            payer_name: T.nilable(String),
            payout_method:
              T.nilable(
                WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::OrHash
              ),
            payout_request_id: T.nilable(String),
            source:
              T.nilable(
                WhopSDK::PayoutCreatedWebhookEvent::Data::Source::OrSymbol
              ),
            speed: WhopSDK::PayoutCreatedWebhookEvent::Data::Speed::OrSymbol,
            status: WhopSDK::PayoutCreatedWebhookEvent::Data::Status::OrSymbol,
            status_detail: String,
            trace_code: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Payout ID, prefixed `wdrl_`.
          id:,
          # The payout amount in whole currency units, as a decimal string.
          amount:,
          # When the payout was created.
          created_at:,
          # Payout currency.
          currency:,
          # The amount delivered in the destination currency, as a decimal string. Assigned
          # when the payout is processed, so it is `null` before then and on payouts without
          # a recorded conversion.
          destination_amount:,
          # Currency the funds are delivered in, taken from the payout method when the
          # payout is created. On a stablecoin payout it follows the settlement payout
          # minted alongside it — the `GET /payouts` row carrying this payout's id as
          # `payout_request_id` — and is `null` only when no settlement payout exists.
          destination_currency:,
          # Estimated time the funds become available in the destination account.
          estimated_arrival:,
          # Exchange rate from the payout currency to the destination currency. Assigned
          # when the payout is processed, so it is `null` before then and on payouts without
          # a recorded rate.
          exchange_rate:,
          # Why the payout ended without paying, or why it reversed after settlement.
          # Present on failed, canceled, denied, and reversed payouts; `null` otherwise.
          failure:,
          # The fee charged for the payout, in the payout currency, as a decimal string.
          fee_amount:,
          # Who bore the payout fee: the account itself, or its parent platform.
          fee_paid_by:,
          # Whop's markup on the provider fee, in the payout currency, as a decimal string.
          # `"0.0"` when none applies.
          markup_fee:,
          # Key-value data attached at creation and echoed on every read. At most 50 keys,
          # key names up to 40 characters, string values up to 500 characters.
          metadata:,
          # The planned net for the destination, in the payout currency: amount minus
          # fee_amount minus markup_fee when fee_paid_by is `self`; equal to amount when the
          # platform covers the fees. A payout that ends denied, canceled, or failed
          # delivered nothing — most keep the planned figure and `failure` says where the
          # funds are, but a canceled stablecoin payout can report the settled outcome
          # instead: `amount` carries what stayed in the balance, fees are zero because none
          # were charged, and `net_amount` is 0 because nothing was delivered.
          net_amount:,
          # Free-form notes attached by the payout creator, or `null` when none were
          # provided. Maximum 255 characters.
          notes:,
          object:,
          # Name of the entity processing the payout.
          payer_name:,
          # The saved payout method used. Requires payout:destination:read; null without it.
          payout_method:,
          # Payout request ID, prefixed `cofr_`, returned by `POST /payouts`. Match it to
          # the settled payout in `GET /payouts`. Returns `null` for payouts not created by
          # `POST /payouts`.
          payout_request_id:,
          # How the payout was created. `automatic` means a scheduled auto-payout; `null` on
          # payouts created before source tracking or through internal tooling.
          source:,
          # Payout delivery speed.
          speed:,
          # Current payout status.
          status:,
          # The finest machine phase under `status` — for example
          # `awaiting_provider_acceptance` vs `in_transit` under `processing`, or the
          # stablecoin conversion phase under `requested`. Informational vocabulary: values
          # can be added without a version bump; `status` is the versioned contract.
          status_detail:,
          # ACH trace number the recipient's bank can use to locate this payout. Assigned
          # when the payout is submitted to the bank, so it is `null` before then and on
          # payouts not sent over ACH.
          trace_code:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: String,
              created_at: Time,
              currency: String,
              destination_amount: T.nilable(String),
              destination_currency: T.nilable(String),
              estimated_arrival: T.nilable(Time),
              exchange_rate: T.nilable(Float),
              failure:
                T.nilable(WhopSDK::PayoutCreatedWebhookEvent::Data::Failure),
              fee_amount: String,
              fee_paid_by:
                WhopSDK::PayoutCreatedWebhookEvent::Data::FeePaidBy::TaggedSymbol,
              markup_fee: String,
              metadata: T::Hash[Symbol, String],
              net_amount: String,
              notes: T.nilable(String),
              object:
                WhopSDK::PayoutCreatedWebhookEvent::Data::Object::TaggedSymbol,
              payer_name: T.nilable(String),
              payout_method:
                T.nilable(
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod
                ),
              payout_request_id: T.nilable(String),
              source:
                T.nilable(
                  WhopSDK::PayoutCreatedWebhookEvent::Data::Source::TaggedSymbol
                ),
              speed:
                WhopSDK::PayoutCreatedWebhookEvent::Data::Speed::TaggedSymbol,
              status:
                WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol,
              status_detail: String,
              trace_code: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Failure < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutCreatedWebhookEvent::Data::Failure,
                WhopSDK::Internal::AnyHash
              )
            end

          # Classified failure code from the maintained error catalog.
          sig { returns(T.nilable(String)) }
          attr_accessor :code

          # The effective time of the reversal that put the funds back in the balance —
          # `null` if they never left it or have not returned yet. Set only once the return
          # is confirmed in the ledger; the ledger posting itself can land moments after
          # this time.
          sig { returns(T.nilable(Time)) }
          attr_accessor :funds_returned_at

          # Human-readable explanation of the failure. Callers holding
          # `payout:destination:read` may receive text personalized to the destination;
          # other callers get the generic catalog message.
          sig { returns(T.nilable(String)) }
          attr_accessor :message

          # Why the payout ended without paying, or why it reversed after settlement.
          # Present on failed, canceled, denied, and reversed payouts; `null` otherwise.
          sig do
            params(
              code: T.nilable(String),
              funds_returned_at: T.nilable(Time),
              message: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Classified failure code from the maintained error catalog.
            code:,
            # The effective time of the reversal that put the funds back in the balance —
            # `null` if they never left it or have not returned yet. Set only once the return
            # is confirmed in the ledger; the ledger posting itself can land moments after
            # this time.
            funds_returned_at:,
            # Human-readable explanation of the failure. Callers holding
            # `payout:destination:read` may receive text personalized to the destination;
            # other callers get the generic catalog message.
            message:
          )
          end

          sig do
            override.returns(
              {
                code: T.nilable(String),
                funds_returned_at: T.nilable(Time),
                message: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        # Who bore the payout fee: the account itself, or its parent platform.
        module FeePaidBy
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::PayoutCreatedWebhookEvent::Data::FeePaidBy)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SELF =
            T.let(
              :self,
              WhopSDK::PayoutCreatedWebhookEvent::Data::FeePaidBy::TaggedSymbol
            )
          PLATFORM =
            T.let(
              :platform,
              WhopSDK::PayoutCreatedWebhookEvent::Data::FeePaidBy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PayoutCreatedWebhookEvent::Data::FeePaidBy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Object
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::PayoutCreatedWebhookEvent::Data::Object)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYOUT =
            T.let(
              :payout,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Object::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PayoutCreatedWebhookEvent::Data::Object::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class PayoutMethod < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod,
                WhopSDK::Internal::AnyHash
              )
            end

          # Saved payout method nickname.
          sig { returns(T.nilable(String)) }
          attr_accessor :nickname

          # Supported payout method display details.
          sig do
            returns(
              T.nilable(
                WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod
              )
            )
          end
          attr_reader :supported_payout_method

          sig do
            params(
              supported_payout_method:
                T.nilable(
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::OrHash
                )
            ).void
          end
          attr_writer :supported_payout_method

          # The saved payout method used. Requires payout:destination:read; null without it.
          sig do
            params(
              nickname: T.nilable(String),
              supported_payout_method:
                T.nilable(
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::OrHash
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # Saved payout method nickname.
            nickname:,
            # Supported payout method display details.
            supported_payout_method:
          )
          end

          sig do
            override.returns(
              {
                nickname: T.nilable(String),
                supported_payout_method:
                  T.nilable(
                    WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod
                  )
              }
            )
          end
          def to_hash
          end

          class SupportedPayoutMethod < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod,
                  WhopSDK::Internal::AnyHash
                )
              end

            # How the funds are delivered to the recipient.
            sig do
              returns(
                WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
              )
            end
            attr_accessor :delivery_type

            # Supported payout method icon URL.
            sig { returns(T.nilable(String)) }
            attr_accessor :icon_url

            # Supported payout method display name.
            sig { returns(T.nilable(String)) }
            attr_accessor :payer_name

            # Supported payout method display details.
            sig do
              params(
                delivery_type:
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::OrSymbol,
                icon_url: T.nilable(String),
                payer_name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # How the funds are delivered to the recipient.
              delivery_type:,
              # Supported payout method icon URL.
              icon_url:,
              # Supported payout method display name.
              payer_name:
            )
            end

            sig do
              override.returns(
                {
                  delivery_type:
                    WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol,
                  icon_url: T.nilable(String),
                  payer_name: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            # How the funds are delivered to the recipient.
            module DeliveryType
              extend WhopSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CASH_PICKUP =
                T.let(
                  :cash_pickup,
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                )
              BANK_DEPOSIT =
                T.let(
                  :bank_deposit,
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                )
              HOME_DELIVERY =
                T.let(
                  :home_delivery,
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                )
              MOBILE_WALLET =
                T.let(
                  :mobile_wallet,
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                )
              CARD =
                T.let(
                  :card,
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                )
              CHECK =
                T.let(
                  :check,
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                )
              BILL =
                T.let(
                  :bill,
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                )
              CRYPTOCURRENCY =
                T.let(
                  :cryptocurrency,
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                )
              UNKNOWN =
                T.let(
                  :unknown,
                  WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    WhopSDK::PayoutCreatedWebhookEvent::Data::PayoutMethod::SupportedPayoutMethod::DeliveryType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        # How the payout was created. `automatic` means a scheduled auto-payout; `null` on
        # payouts created before source tracking or through internal tooling.
        module Source
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::PayoutCreatedWebhookEvent::Data::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          API =
            T.let(
              :api,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Source::TaggedSymbol
            )
          DASHBOARD =
            T.let(
              :dashboard,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Source::TaggedSymbol
            )
          AUTOMATIC =
            T.let(
              :automatic,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PayoutCreatedWebhookEvent::Data::Source::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Payout delivery speed.
        module Speed
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::PayoutCreatedWebhookEvent::Data::Speed)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDARD =
            T.let(
              :standard,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Speed::TaggedSymbol
            )
          INSTANT =
            T.let(
              :instant,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Speed::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PayoutCreatedWebhookEvent::Data::Speed::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Current payout status.
        module Status
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::PayoutCreatedWebhookEvent::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REQUESTED =
            T.let(
              :requested,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          IN_REVIEW =
            T.let(
              :in_review,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          PROCESSING =
            T.let(
              :processing,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          REVERSED =
            T.let(
              :reversed,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          CANCELED =
            T.let(
              :canceled,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          DENIED =
            T.let(
              :denied,
              WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::PayoutCreatedWebhookEvent::Data::Status::TaggedSymbol
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
