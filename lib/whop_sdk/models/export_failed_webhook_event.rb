# frozen_string_literal: true

module WhopSDK
  module Models
    class ExportFailedWebhookEvent < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID for every single webhook request
      #
      #   @return [String]
      required :id, String

      # @!attribute api_version
      #   The API version for this webhook
      #
      #   @return [Symbol, :v1]
      required :api_version, const: :v1

      # @!attribute api_version_date
      #   The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @return [String, nil]
      required :api_version_date, String, nil?: true

      # @!attribute data
      #
      #   @return [WhopSDK::Models::ExportFailedWebhookEvent::Data]
      required :data, -> { WhopSDK::ExportFailedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The webhook event type
      #
      #   @return [Symbol, :"export.failed"]
      required :type, const: :"export.failed"

      # @!attribute account_id
      #   The account ID that this webhook event is associated with
      #
      #   @return [String, nil]
      optional :account_id, String, nil?: true

      # @!attribute previous_attributes
      #   For some `.updated` events, the old values of the payload fields that changed,
      #   keyed by field name. Omitted when no capture is available for the event
      #
      #   @return [Object, nil]
      optional :previous_attributes, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, api_version_date:, data:, timestamp:, account_id: nil, previous_attributes: nil, api_version: :v1, type: :"export.failed")
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ExportFailedWebhookEvent} for more details.
      #
      #   @param id [String] A unique ID for every single webhook request
      #
      #   @param api_version_date [String, nil] The dated API version (Api-Version-Date) the payload is serialized to
      #
      #   @param data [WhopSDK::Models::ExportFailedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp in ISO 8601 format that the webhook was sent at on the server
      #
      #   @param account_id [String, nil] The account ID that this webhook event is associated with
      #
      #   @param previous_attributes [Object] For some `.updated` events, the old values of the payload fields that changed, k
      #
      #   @param api_version [Symbol, :v1] The API version for this webhook
      #
      #   @param type [Symbol, :"export.failed"] The webhook event type

      # @see WhopSDK::Models::ExportFailedWebhookEvent#data
      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Export ID, prefixed `exprt_`.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   When the export was requested, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :created_at, String

        # @!attribute download_url
        #   A short-lived link to download the finished file. `null` until `status` is
        #   `completed`, and again once the export has expired.
        #
        #   @return [String, nil]
        required :download_url, String, nil?: true

        # @!attribute expires_at
        #   When the file is deleted and the export moves to `expired`, as an ISO 8601
        #   timestamp. Exports are retained for 30 days.
        #
        #   @return [String]
        required :expires_at, String

        # @!attribute progress_percent
        #   Estimated completion percentage from 0 to 100.
        #
        #   @return [Integer, nil]
        required :progress_percent, Integer, nil?: true

        # @!attribute resource
        #   The resource that was exported, e.g. `receipts`, `members`, or `payouts`.
        #
        #   @return [Symbol, WhopSDK::Models::ExportFailedWebhookEvent::Data::Resource]
        required :resource, enum: -> { WhopSDK::ExportFailedWebhookEvent::Data::Resource }

        # @!attribute status
        #   `pending` or `processing` while the file is generated, `completed` when the
        #   download is ready, `failed` if it errored, `expired` once the file has been
        #   deleted.
        #
        #   @return [Symbol, WhopSDK::Models::ExportFailedWebhookEvent::Data::Status]
        required :status, enum: -> { WhopSDK::ExportFailedWebhookEvent::Data::Status }

        # @!attribute updated_at
        #   When the export last changed, as an ISO 8601 timestamp.
        #
        #   @return [String]
        required :updated_at, String

        # @!method initialize(id:, created_at:, download_url:, expires_at:, progress_percent:, resource:, status:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ExportFailedWebhookEvent::Data} for more details.
        #
        #   @param id [String] Export ID, prefixed `exprt_`.
        #
        #   @param created_at [String] When the export was requested, as an ISO 8601 timestamp.
        #
        #   @param download_url [String, nil] A short-lived link to download the finished file. `null` until `status` is `comp
        #
        #   @param expires_at [String] When the file is deleted and the export moves to `expired`, as an ISO 8601 times
        #
        #   @param progress_percent [Integer, nil] Estimated completion percentage from 0 to 100.
        #
        #   @param resource [Symbol, WhopSDK::Models::ExportFailedWebhookEvent::Data::Resource] The resource that was exported, e.g. `receipts`, `members`, or `payouts`.
        #
        #   @param status [Symbol, WhopSDK::Models::ExportFailedWebhookEvent::Data::Status] `pending` or `processing` while the file is generated, `completed` when the down
        #
        #   @param updated_at [String] When the export last changed, as an ISO 8601 timestamp.

        # The resource that was exported, e.g. `receipts`, `members`, or `payouts`.
        #
        # @see WhopSDK::Models::ExportFailedWebhookEvent::Data#resource
        module Resource
          extend WhopSDK::Internal::Type::Enum

          AD_CAMPAIGNS = :ad_campaigns
          AD_GROUPS = :ad_groups
          ADS = :ads
          APPS = :apps
          AUDIENCES = :audiences
          BOUNTIES = :bounties
          BOUNTY_SUBMISSIONS = :bounty_submissions
          CARD_TRANSACTIONS = :card_transactions
          CHECKOUT_CONFIGURATIONS = :checkout_configurations
          DISPUTES = :disputes
          EVENTS = :events
          FINANCIAL_ACTIVITY = :"financial-activity"
          PAYOUT_METHODS = :payout_methods
          PAYOUTS = :payouts
          PEOPLE = :people
          PLANS = :plans
          PRODUCTS = :products
          RESOLUTION_CENTER_CASES = :resolution_center_cases
          SHIPMENTS = :shipments
          SOCIAL_ACCOUNTS = :social_accounts
          TEAM_MEMBERS = :team_members
          TRANSFERS = :transfers
          WEBHOOKS = :webhooks
          MEMBERS = :members
          RECEIPTS = :receipts
          UNCLAIMED_MEMBERSHIPS = :unclaimed_memberships
          MEMBERSHIPS = :memberships
          TRACKING_LINKS = :tracking_links
          PROMO_CODES = :promo_codes
          RESOLUTIONS = :resolutions
          ENTRIES = :entries
          LEADS = :leads
          CONTENT_REWARDS_SUBMISSIONS = :content_rewards_submissions
          INVOICES = :invoices
          CANCELATION_REASONS = :cancelation_reasons
          CHILD_COMPANIES = :child_companies
          LEDGER_LINES = :ledger_lines
          WITHDRAWAL_LINES = :withdrawal_lines

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # `pending` or `processing` while the file is generated, `completed` when the
        # download is ready, `failed` if it errored, `expired` once the file has been
        # deleted.
        #
        # @see WhopSDK::Models::ExportFailedWebhookEvent::Data#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          PENDING = :pending
          PROCESSING = :processing
          COMPLETED = :completed
          FAILED = :failed
          EXPIRED = :expired

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
