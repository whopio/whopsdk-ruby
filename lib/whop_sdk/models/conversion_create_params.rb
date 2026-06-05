# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Conversions#create
    class ConversionCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The company to associate with this event.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute event_name
      #   The type of event.
      #
      #   @return [Symbol, WhopSDK::Models::ConversionCreateParams::EventName]
      required :event_name, enum: -> { WhopSDK::ConversionCreateParams::EventName }

      # @!attribute action_source
      #   The channel where an event originated
      #
      #   @return [Symbol, WhopSDK::Models::ConversionCreateParams::ActionSource, nil]
      optional :action_source, enum: -> { WhopSDK::ConversionCreateParams::ActionSource }, nil?: true

      # @!attribute context
      #   Tracking and attribution context.
      #
      #   @return [WhopSDK::Models::ConversionCreateParams::Context, nil]
      optional :context, -> { WhopSDK::ConversionCreateParams::Context }, nil?: true

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, WhopSDK::Models::Currency, nil]
      optional :currency, enum: -> { WhopSDK::Currency }, nil?: true

      # @!attribute custom_name
      #   Custom event name when event_name is 'custom'.
      #
      #   @return [String, nil]
      optional :custom_name, String, nil?: true

      # @!attribute duration
      #   For 'leave' events: milliseconds the visitor spent on the page.
      #
      #   @return [Integer, nil]
      optional :duration, Integer, nil?: true

      # @!attribute event_id
      #   Client-provided identifier for deduplication. Generated if omitted.
      #
      #   @return [String, nil]
      optional :event_id, String, nil?: true

      # @!attribute event_time
      #   When the event occurred. Defaults to now.
      #
      #   @return [Time, nil]
      optional :event_time, Time, nil?: true

      # @!attribute plan_id
      #   The plan associated with the event.
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!attribute product_id
      #   The product associated with the event.
      #
      #   @return [String, nil]
      optional :product_id, String, nil?: true

      # @!attribute referrer_url
      #   The referring URL.
      #
      #   @return [String, nil]
      optional :referrer_url, String, nil?: true

      # @!attribute resumed
      #   For 'page' events: true when the page was restored from the back/forward cache.
      #
      #   @return [Boolean, nil]
      optional :resumed, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute source
      #   For 'identify' events: where the identity was captured (url, form, manual,
      #   iframe).
      #
      #   @return [String, nil]
      optional :source, String, nil?: true

      # @!attribute title
      #   For 'page' events: the document title.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute url
      #   The URL where the event occurred.
      #
      #   @return [String, nil]
      optional :url, String, nil?: true

      # @!attribute user
      #   User identity and profile data.
      #
      #   @return [WhopSDK::Models::ConversionCreateParams::User, nil]
      optional :user, -> { WhopSDK::ConversionCreateParams::User }, nil?: true

      # @!attribute value
      #   Monetary value associated with the event.
      #
      #   @return [Float, nil]
      optional :value, Float, nil?: true

      # @!method initialize(company_id:, event_name:, action_source: nil, context: nil, currency: nil, custom_name: nil, duration: nil, event_id: nil, event_time: nil, plan_id: nil, product_id: nil, referrer_url: nil, resumed: nil, source: nil, title: nil, url: nil, user: nil, value: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ConversionCreateParams} for more details.
      #
      #   @param company_id [String] The company to associate with this event.
      #
      #   @param event_name [Symbol, WhopSDK::Models::ConversionCreateParams::EventName] The type of event.
      #
      #   @param action_source [Symbol, WhopSDK::Models::ConversionCreateParams::ActionSource, nil] The channel where an event originated
      #
      #   @param context [WhopSDK::Models::ConversionCreateParams::Context, nil] Tracking and attribution context.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
      #
      #   @param custom_name [String, nil] Custom event name when event_name is 'custom'.
      #
      #   @param duration [Integer, nil] For 'leave' events: milliseconds the visitor spent on the page.
      #
      #   @param event_id [String, nil] Client-provided identifier for deduplication. Generated if omitted.
      #
      #   @param event_time [Time, nil] When the event occurred. Defaults to now.
      #
      #   @param plan_id [String, nil] The plan associated with the event.
      #
      #   @param product_id [String, nil] The product associated with the event.
      #
      #   @param referrer_url [String, nil] The referring URL.
      #
      #   @param resumed [Boolean, nil] For 'page' events: true when the page was restored from the back/forward cache.
      #
      #   @param source [String, nil] For 'identify' events: where the identity was captured (url, form, manual, ifram
      #
      #   @param title [String, nil] For 'page' events: the document title.
      #
      #   @param url [String, nil] The URL where the event occurred.
      #
      #   @param user [WhopSDK::Models::ConversionCreateParams::User, nil] User identity and profile data.
      #
      #   @param value [Float, nil] Monetary value associated with the event.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The type of event.
      module EventName
        extend WhopSDK::Internal::Type::Enum

        LEAD = :lead
        SUBMIT_APPLICATION = :submit_application
        CONTACT = :contact
        COMPLETE_REGISTRATION = :complete_registration
        SCHEDULE = :schedule
        CUSTOM = :custom
        PAGE = :page
        LEAVE = :leave
        IDENTIFY = :identify

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The channel where an event originated
      module ActionSource
        extend WhopSDK::Internal::Type::Enum

        EMAIL = :email
        WEBSITE = :website
        APP = :app
        PHONE_CALL = :phone_call
        CHAT = :chat
        PHYSICAL_STORE = :physical_store
        SYSTEM_GENERATED = :system_generated
        BUSINESS_MESSAGING = :business_messaging
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Context < WhopSDK::Internal::Type::BaseModel
        # @!attribute ad_campaign_id
        #   Ad campaign ID.
        #
        #   @return [String, nil]
        optional :ad_campaign_id, String, nil?: true

        # @!attribute ad_id
        #   Ad ID.
        #
        #   @return [String, nil]
        optional :ad_id, String, nil?: true

        # @!attribute ad_set_id
        #   Ad set ID.
        #
        #   @return [String, nil]
        optional :ad_set_id, String, nil?: true

        # @!attribute fbc
        #   Facebook click cookie (\_fbc, format fb.1.{timestamp}.{fbclid}).
        #
        #   @return [String, nil]
        optional :fbc, String, nil?: true

        # @!attribute fbclid
        #   Facebook click ID.
        #
        #   @return [String, nil]
        optional :fbclid, String, nil?: true

        # @!attribute fbp
        #   Facebook browser pixel ID.
        #
        #   @return [String, nil]
        optional :fbp, String, nil?: true

        # @!attribute fingerprint
        #   Client-side device fingerprint.
        #
        #   @return [String, nil]
        optional :fingerprint, String, nil?: true

        # @!attribute fingerprint_confidence
        #   Confidence score (0-1) for the device fingerprint.
        #
        #   @return [Float, nil]
        optional :fingerprint_confidence, Float, nil?: true

        # @!attribute ga
        #   Google Analytics client ID.
        #
        #   @return [String, nil]
        optional :ga, String, nil?: true

        # @!attribute gbraid
        #   Google Ads gbraid click ID (iOS privacy).
        #
        #   @return [String, nil]
        optional :gbraid, String, nil?: true

        # @!attribute gclid
        #   Google click ID.
        #
        #   @return [String, nil]
        optional :gclid, String, nil?: true

        # @!attribute ig_sid
        #   Instagram session ID.
        #
        #   @return [String, nil]
        optional :ig_sid, String, nil?: true

        # @!attribute ip_address
        #   IP address.
        #
        #   @return [String, nil]
        optional :ip_address, String, nil?: true

        # @!attribute language
        #   Browser language (e.g. en-US).
        #
        #   @return [String, nil]
        optional :language, String, nil?: true

        # @!attribute li_fat_id
        #   LinkedIn click ID.
        #
        #   @return [String, nil]
        optional :li_fat_id, String, nil?: true

        # @!attribute msclkid
        #   Microsoft Advertising (Bing) click ID.
        #
        #   @return [String, nil]
        optional :msclkid, String, nil?: true

        # @!attribute rdt_cid
        #   Reddit click ID.
        #
        #   @return [String, nil]
        optional :rdt_cid, String, nil?: true

        # @!attribute sccid
        #   Snapchat click ID.
        #
        #   @return [String, nil]
        optional :sccid, String, nil?: true

        # @!attribute screen_resolution
        #   Screen resolution (e.g. 1920x1080).
        #
        #   @return [String, nil]
        optional :screen_resolution, String, nil?: true

        # @!attribute timezone
        #   IANA timezone (e.g. America/New_York).
        #
        #   @return [String, nil]
        optional :timezone, String, nil?: true

        # @!attribute ttclid
        #   TikTok click ID.
        #
        #   @return [String, nil]
        optional :ttclid, String, nil?: true

        # @!attribute ttp
        #   TikTok pixel ID.
        #
        #   @return [String, nil]
        optional :ttp, String, nil?: true

        # @!attribute twclid
        #   X (Twitter) click ID.
        #
        #   @return [String, nil]
        optional :twclid, String, nil?: true

        # @!attribute user_agent
        #   Browser user agent string.
        #
        #   @return [String, nil]
        optional :user_agent, String, nil?: true

        # @!attribute utm_campaign
        #   UTM campaign parameter.
        #
        #   @return [String, nil]
        optional :utm_campaign, String, nil?: true

        # @!attribute utm_content
        #   UTM content parameter.
        #
        #   @return [String, nil]
        optional :utm_content, String, nil?: true

        # @!attribute utm_id
        #   UTM ID parameter.
        #
        #   @return [String, nil]
        optional :utm_id, String, nil?: true

        # @!attribute utm_medium
        #   UTM medium parameter.
        #
        #   @return [String, nil]
        optional :utm_medium, String, nil?: true

        # @!attribute utm_source
        #   UTM source parameter.
        #
        #   @return [String, nil]
        optional :utm_source, String, nil?: true

        # @!attribute utm_term
        #   UTM term parameter.
        #
        #   @return [String, nil]
        optional :utm_term, String, nil?: true

        # @!attribute wbraid
        #   Google Ads wbraid click ID (iOS privacy).
        #
        #   @return [String, nil]
        optional :wbraid, String, nil?: true

        # @!method initialize(ad_campaign_id: nil, ad_id: nil, ad_set_id: nil, fbc: nil, fbclid: nil, fbp: nil, fingerprint: nil, fingerprint_confidence: nil, ga: nil, gbraid: nil, gclid: nil, ig_sid: nil, ip_address: nil, language: nil, li_fat_id: nil, msclkid: nil, rdt_cid: nil, sccid: nil, screen_resolution: nil, timezone: nil, ttclid: nil, ttp: nil, twclid: nil, user_agent: nil, utm_campaign: nil, utm_content: nil, utm_id: nil, utm_medium: nil, utm_source: nil, utm_term: nil, wbraid: nil)
        #   Tracking and attribution context.
        #
        #   @param ad_campaign_id [String, nil] Ad campaign ID.
        #
        #   @param ad_id [String, nil] Ad ID.
        #
        #   @param ad_set_id [String, nil] Ad set ID.
        #
        #   @param fbc [String, nil] Facebook click cookie (\_fbc, format fb.1.{timestamp}.{fbclid}).
        #
        #   @param fbclid [String, nil] Facebook click ID.
        #
        #   @param fbp [String, nil] Facebook browser pixel ID.
        #
        #   @param fingerprint [String, nil] Client-side device fingerprint.
        #
        #   @param fingerprint_confidence [Float, nil] Confidence score (0-1) for the device fingerprint.
        #
        #   @param ga [String, nil] Google Analytics client ID.
        #
        #   @param gbraid [String, nil] Google Ads gbraid click ID (iOS privacy).
        #
        #   @param gclid [String, nil] Google click ID.
        #
        #   @param ig_sid [String, nil] Instagram session ID.
        #
        #   @param ip_address [String, nil] IP address.
        #
        #   @param language [String, nil] Browser language (e.g. en-US).
        #
        #   @param li_fat_id [String, nil] LinkedIn click ID.
        #
        #   @param msclkid [String, nil] Microsoft Advertising (Bing) click ID.
        #
        #   @param rdt_cid [String, nil] Reddit click ID.
        #
        #   @param sccid [String, nil] Snapchat click ID.
        #
        #   @param screen_resolution [String, nil] Screen resolution (e.g. 1920x1080).
        #
        #   @param timezone [String, nil] IANA timezone (e.g. America/New_York).
        #
        #   @param ttclid [String, nil] TikTok click ID.
        #
        #   @param ttp [String, nil] TikTok pixel ID.
        #
        #   @param twclid [String, nil] X (Twitter) click ID.
        #
        #   @param user_agent [String, nil] Browser user agent string.
        #
        #   @param utm_campaign [String, nil] UTM campaign parameter.
        #
        #   @param utm_content [String, nil] UTM content parameter.
        #
        #   @param utm_id [String, nil] UTM ID parameter.
        #
        #   @param utm_medium [String, nil] UTM medium parameter.
        #
        #   @param utm_source [String, nil] UTM source parameter.
        #
        #   @param utm_term [String, nil] UTM term parameter.
        #
        #   @param wbraid [String, nil] Google Ads wbraid click ID (iOS privacy).
      end

      class User < WhopSDK::Internal::Type::BaseModel
        # @!attribute anonymous_id
        #   An anonymous identifier for the user.
        #
        #   @return [String, nil]
        optional :anonymous_id, String, nil?: true

        # @!attribute birthdate
        #   Date of birth (YYYY-MM-DD).
        #
        #   @return [String, nil]
        optional :birthdate, String, nil?: true

        # @!attribute city
        #   City.
        #
        #   @return [String, nil]
        optional :city, String, nil?: true

        # @!attribute country
        #   Country.
        #
        #   @return [String, nil]
        optional :country, String, nil?: true

        # @!attribute email
        #   Email address.
        #
        #   @return [String, nil]
        optional :email, String, nil?: true

        # @!attribute external_id
        #   An external identifier for the user.
        #
        #   @return [String, nil]
        optional :external_id, String, nil?: true

        # @!attribute first_name
        #   First name.
        #
        #   @return [String, nil]
        optional :first_name, String, nil?: true

        # @!attribute gender
        #   Gender
        #
        #   @return [Symbol, WhopSDK::Models::ConversionCreateParams::User::Gender, nil]
        optional :gender, enum: -> { WhopSDK::ConversionCreateParams::User::Gender }, nil?: true

        # @!attribute last_name
        #   Last name.
        #
        #   @return [String, nil]
        optional :last_name, String, nil?: true

        # @!attribute linked_anonymous_id
        #   A second anonymous identifier to link to this user (e.g. captured across an
        #   iframe boundary).
        #
        #   @return [String, nil]
        optional :linked_anonymous_id, String, nil?: true

        # @!attribute linked_wuid
        #   A wuid from a linked frame, captured across an iframe boundary.
        #
        #   @return [String, nil]
        optional :linked_wuid, String, nil?: true

        # @!attribute member_id
        #   The Whop member ID.
        #
        #   @return [String, nil]
        optional :member_id, String, nil?: true

        # @!attribute membership_id
        #   The Whop membership ID.
        #
        #   @return [String, nil]
        optional :membership_id, String, nil?: true

        # @!attribute name
        #   Full display name.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!attribute phone
        #   Phone number.
        #
        #   @return [String, nil]
        optional :phone, String, nil?: true

        # @!attribute postal_code
        #   Postal code.
        #
        #   @return [String, nil]
        optional :postal_code, String, nil?: true

        # @!attribute state
        #   State or region.
        #
        #   @return [String, nil]
        optional :state, String, nil?: true

        # @!attribute user_id
        #   The Whop user ID.
        #
        #   @return [String, nil]
        optional :user_id, String, nil?: true

        # @!attribute username
        #   Username.
        #
        #   @return [String, nil]
        optional :username, String, nil?: true

        # @!method initialize(anonymous_id: nil, birthdate: nil, city: nil, country: nil, email: nil, external_id: nil, first_name: nil, gender: nil, last_name: nil, linked_anonymous_id: nil, linked_wuid: nil, member_id: nil, membership_id: nil, name: nil, phone: nil, postal_code: nil, state: nil, user_id: nil, username: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ConversionCreateParams::User} for more details.
        #
        #   User identity and profile data.
        #
        #   @param anonymous_id [String, nil] An anonymous identifier for the user.
        #
        #   @param birthdate [String, nil] Date of birth (YYYY-MM-DD).
        #
        #   @param city [String, nil] City.
        #
        #   @param country [String, nil] Country.
        #
        #   @param email [String, nil] Email address.
        #
        #   @param external_id [String, nil] An external identifier for the user.
        #
        #   @param first_name [String, nil] First name.
        #
        #   @param gender [Symbol, WhopSDK::Models::ConversionCreateParams::User::Gender, nil] Gender
        #
        #   @param last_name [String, nil] Last name.
        #
        #   @param linked_anonymous_id [String, nil] A second anonymous identifier to link to this user (e.g. captured across an ifra
        #
        #   @param linked_wuid [String, nil] A wuid from a linked frame, captured across an iframe boundary.
        #
        #   @param member_id [String, nil] The Whop member ID.
        #
        #   @param membership_id [String, nil] The Whop membership ID.
        #
        #   @param name [String, nil] Full display name.
        #
        #   @param phone [String, nil] Phone number.
        #
        #   @param postal_code [String, nil] Postal code.
        #
        #   @param state [String, nil] State or region.
        #
        #   @param user_id [String, nil] The Whop user ID.
        #
        #   @param username [String, nil] Username.

        # Gender
        #
        # @see WhopSDK::Models::ConversionCreateParams::User#gender
        module Gender
          extend WhopSDK::Internal::Type::Enum

          MALE = :male
          FEMALE = :female

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
