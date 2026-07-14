# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Ads#update
    class AdUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute call_to_action
      #   The call-to-action button shown on the ad.
      #
      #   @return [Symbol, WhopSDK::Models::AdUpdateParams::CallToAction, nil]
      optional :call_to_action, enum: -> { WhopSDK::AdUpdateParams::CallToAction }

      # @!attribute creatives
      #   The ad's creative assets. Each entry is an uploaded file id with an optional
      #   format; omit format for the original asset. Replaces a live ad's creative on the
      #   platform.
      #
      #   @return [Array<WhopSDK::Models::AdUpdateParams::Creative>, nil]
      optional :creatives, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdateParams::Creative] }

      # @!attribute descriptions
      #   The description variants shown on the ad.
      #
      #   @return [Array<String>, nil]
      optional :descriptions, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute headlines
      #   The headline variants shown on the ad.
      #
      #   @return [Array<String>, nil]
      optional :headlines, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute lead_form
      #   Instant lead form for the ad. Only allowed when the ad group's
      #   conversion_location is an instant-form destination (instant_forms,
      #   instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with
      #   lead_form_id.
      #
      #   @return [WhopSDK::Models::AdUpdateParams::LeadForm, nil]
      optional :lead_form, -> { WhopSDK::AdUpdateParams::LeadForm }

      # @!attribute lead_form_id
      #   Use an existing Meta instant form instead of creating one — the form's Meta id,
      #   from a form already on the ad's Facebook page. Only allowed when the ad group's
      #   conversion_location is an instant-form destination. Mutually exclusive with
      #   lead_form. Replaces a stored lead_form.
      #
      #   @return [String, nil]
      optional :lead_form_id, String

      # @!attribute messaging_config
      #   Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt
      #   (keyword).
      #
      #   @return [WhopSDK::Models::AdUpdateParams::MessagingConfig, nil]
      optional :messaging_config, -> { WhopSDK::AdUpdateParams::MessagingConfig }

      # @!attribute multi_advertiser_ads
      #   Whether the ad can appear alongside other advertisers' ads in the same unit.
      #   Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :multi_advertiser_ads, WhopSDK::Internal::Type::Boolean

      # @!attribute post_id
      #   Promote an existing post instead of uploading creatives — a Facebook post or
      #   Instagram media id. Mutually exclusive with creatives. Pair with post_source.
      #
      #   @return [String, nil]
      optional :post_id, String

      # @!attribute post_source
      #   Which network post_id refers to — facebook (a page post) or instagram (a media
      #   id). Authoritative; when omitted the source is inferred from the id shape.
      #
      #   @return [Symbol, WhopSDK::Models::AdUpdateParams::PostSource, nil]
      optional :post_source, enum: -> { WhopSDK::AdUpdateParams::PostSource }

      # @!attribute primary_texts
      #   The primary text variants shown in the ad body.
      #
      #   @return [Array<String>, nil]
      optional :primary_texts, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute social_accounts
      #   The social accounts the ad runs under.
      #
      #   @return [Array<WhopSDK::Models::AdUpdateParams::SocialAccount>, nil]
      optional :social_accounts, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdateParams::SocialAccount] }

      # @!attribute title
      #   The display name of the ad.
      #
      #   @return [String, nil]
      optional :title, String

      # @!attribute url
      #   The URL the ad links to.
      #
      #   @return [String, nil]
      optional :url, String

      # @!attribute url_parameters
      #   Query parameters appended to the destination URL, as a string-to-string map.
      #
      #   @return [Object, nil]
      optional :url_parameters, WhopSDK::Internal::Type::Unknown

      # @!method initialize(id:, call_to_action: nil, creatives: nil, descriptions: nil, headlines: nil, lead_form: nil, lead_form_id: nil, messaging_config: nil, multi_advertiser_ads: nil, post_id: nil, post_source: nil, primary_texts: nil, social_accounts: nil, title: nil, url: nil, url_parameters: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param call_to_action [Symbol, WhopSDK::Models::AdUpdateParams::CallToAction] The call-to-action button shown on the ad.
      #
      #   @param creatives [Array<WhopSDK::Models::AdUpdateParams::Creative>] The ad's creative assets. Each entry is an uploaded file id with an optional for
      #
      #   @param descriptions [Array<String>] The description variants shown on the ad.
      #
      #   @param headlines [Array<String>] The headline variants shown on the ad.
      #
      #   @param lead_form [WhopSDK::Models::AdUpdateParams::LeadForm] Instant lead form for the ad. Only allowed when the ad group's conversion_locati
      #
      #   @param lead_form_id [String] Use an existing Meta instant form instead of creating one — the form's Meta id,
      #
      #   @param messaging_config [WhopSDK::Models::AdUpdateParams::MessagingConfig] Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt
      #
      #   @param multi_advertiser_ads [Boolean] Whether the ad can appear alongside other advertisers' ads in the same unit. Def
      #
      #   @param post_id [String] Promote an existing post instead of uploading creatives — a Facebook post or Ins
      #
      #   @param post_source [Symbol, WhopSDK::Models::AdUpdateParams::PostSource] Which network post_id refers to — facebook (a page post) or instagram (a media i
      #
      #   @param primary_texts [Array<String>] The primary text variants shown in the ad body.
      #
      #   @param social_accounts [Array<WhopSDK::Models::AdUpdateParams::SocialAccount>] The social accounts the ad runs under.
      #
      #   @param title [String] The display name of the ad.
      #
      #   @param url [String] The URL the ad links to.
      #
      #   @param url_parameters [Object] Query parameters appended to the destination URL, as a string-to-string map.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The call-to-action button shown on the ad.
      module CallToAction
        extend WhopSDK::Internal::Type::Enum

        APPLY_NOW = :apply_now
        BOOK_NOW = :book_now
        CALL_NOW = :call_now
        CONTACT_US = :contact_us
        DOWNLOAD = :download
        GET_DIRECTIONS = :get_directions
        GET_OFFER = :get_offer
        GET_QUOTE = :get_quote
        LEARN_MORE = :learn_more
        LISTEN_NOW = :listen_now
        MESSAGE_PAGE = :message_page
        NO_BUTTON = :no_button
        OPEN_LINK = :open_link
        ORDER_NOW = :order_now
        REQUEST_TIME = :request_time
        SEE_DETAILS = :see_details
        SEE_MENU = :see_menu
        SEND_UPDATES = :send_updates
        SHOP_NOW = :shop_now
        SIGN_UP = :sign_up
        SUBSCRIBE = :subscribe
        WATCH_MORE = :watch_more

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Creative < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute crop
        #   The saved crop window for this creative, in source image pixels. Omit it for the
        #   original asset or for a format that has not been cropped.
        #
        #   @return [WhopSDK::Models::AdUpdateParams::Creative::Crop, nil]
        optional :crop, -> { WhopSDK::AdUpdateParams::Creative::Crop }

        # @!attribute format_
        #
        #   @return [Symbol, WhopSDK::Models::AdUpdateParams::Creative::Format, nil]
        optional :format_, enum: -> { WhopSDK::AdUpdateParams::Creative::Format }, api_name: :format

        # @!method initialize(id: nil, crop: nil, format_: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdUpdateParams::Creative} for more details.
        #
        #   @param id [String]
        #
        #   @param crop [WhopSDK::Models::AdUpdateParams::Creative::Crop] The saved crop window for this creative, in source image pixels. Omit it for the
        #
        #   @param format_ [Symbol, WhopSDK::Models::AdUpdateParams::Creative::Format]

        # @see WhopSDK::Models::AdUpdateParams::Creative#crop
        class Crop < WhopSDK::Internal::Type::BaseModel
          # @!attribute height
          #
          #   @return [Float, nil]
          optional :height, Float

          # @!attribute width
          #
          #   @return [Float, nil]
          optional :width, Float

          # @!attribute x
          #
          #   @return [Float, nil]
          optional :x, Float

          # @!attribute y_
          #
          #   @return [Float, nil]
          optional :y_, Float, api_name: :y

          # @!method initialize(height: nil, width: nil, x: nil, y_: nil)
          #   The saved crop window for this creative, in source image pixels. Omit it for the
          #   original asset or for a format that has not been cropped.
          #
          #   @param height [Float]
          #   @param width [Float]
          #   @param x [Float]
          #   @param y_ [Float]
        end

        # @see WhopSDK::Models::AdUpdateParams::Creative#format_
        module Format
          extend WhopSDK::Internal::Type::Enum

          SQUARE = :square
          VERTICAL = :vertical
          HORIZONTAL = :horizontal

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class LeadForm < WhopSDK::Internal::Type::BaseModel
        # @!attribute completion
        #   Optional completion screen shown after submission; url sets the follow-up
        #   website button.
        #
        #   @return [WhopSDK::Models::AdUpdateParams::LeadForm::Completion, nil]
        optional :completion, -> { WhopSDK::AdUpdateParams::LeadForm::Completion }

        # @!attribute disclaimer
        #   Optional custom consent disclaimer with checkboxes.
        #
        #   @return [WhopSDK::Models::AdUpdateParams::LeadForm::Disclaimer, nil]
        optional :disclaimer, -> { WhopSDK::AdUpdateParams::LeadForm::Disclaimer }

        # @!attribute form_type
        #   more_volume (default) is quickest to submit; higher_intent adds a confirmation
        #   step.
        #
        #   @return [Symbol, WhopSDK::Models::AdUpdateParams::LeadForm::FormType, nil]
        optional :form_type, enum: -> { WhopSDK::AdUpdateParams::LeadForm::FormType }

        # @!attribute intro
        #   Optional intro screen shown before the questions.
        #
        #   @return [WhopSDK::Models::AdUpdateParams::LeadForm::Intro, nil]
        optional :intro, -> { WhopSDK::AdUpdateParams::LeadForm::Intro }

        # @!attribute name
        #   Internal name for the form. Auto-generated if omitted.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute phone_verification
        #   Require SMS verification of the phone number (higher_intent forms).
        #
        #   @return [Boolean, nil]
        optional :phone_verification, WhopSDK::Internal::Type::Boolean

        # @!attribute privacy_policy
        #   Your privacy policy. url is required by Meta.
        #
        #   @return [WhopSDK::Models::AdUpdateParams::LeadForm::PrivacyPolicy, nil]
        optional :privacy_policy, -> { WhopSDK::AdUpdateParams::LeadForm::PrivacyPolicy }

        # @!attribute questions
        #   The questions on the form. Standard prefill types need only a type; a custom
        #   question needs a label and a format (plus options for multiple_choice). Options
        #   carry an optional key and answer-routing logic.
        #
        #   @return [Array<WhopSDK::Models::AdUpdateParams::LeadForm::Question>, nil]
        optional :questions, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdateParams::LeadForm::Question] }

        # @!method initialize(completion: nil, disclaimer: nil, form_type: nil, intro: nil, name: nil, phone_verification: nil, privacy_policy: nil, questions: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::AdUpdateParams::LeadForm} for more details.
        #
        #   Instant lead form for the ad. Only allowed when the ad group's
        #   conversion_location is an instant-form destination (instant_forms,
        #   instant_forms_and_messenger, website_and_instant_forms). Mutually exclusive with
        #   lead_form_id.
        #
        #   @param completion [WhopSDK::Models::AdUpdateParams::LeadForm::Completion] Optional completion screen shown after submission; url sets the follow-up websit
        #
        #   @param disclaimer [WhopSDK::Models::AdUpdateParams::LeadForm::Disclaimer] Optional custom consent disclaimer with checkboxes.
        #
        #   @param form_type [Symbol, WhopSDK::Models::AdUpdateParams::LeadForm::FormType] more_volume (default) is quickest to submit; higher_intent adds a confirmation s
        #
        #   @param intro [WhopSDK::Models::AdUpdateParams::LeadForm::Intro] Optional intro screen shown before the questions.
        #
        #   @param name [String] Internal name for the form. Auto-generated if omitted.
        #
        #   @param phone_verification [Boolean] Require SMS verification of the phone number (higher_intent forms).
        #
        #   @param privacy_policy [WhopSDK::Models::AdUpdateParams::LeadForm::PrivacyPolicy] Your privacy policy. url is required by Meta.
        #
        #   @param questions [Array<WhopSDK::Models::AdUpdateParams::LeadForm::Question>] The questions on the form. Standard prefill types need only a type; a custom que

        # @see WhopSDK::Models::AdUpdateParams::LeadForm#completion
        class Completion < WhopSDK::Internal::Type::BaseModel
          # @!attribute button_text
          #
          #   @return [String, nil]
          optional :button_text, String

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute headline
          #
          #   @return [String, nil]
          optional :headline, String

          # @!attribute url
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(button_text: nil, description: nil, headline: nil, url: nil)
          #   Optional completion screen shown after submission; url sets the follow-up
          #   website button.
          #
          #   @param button_text [String]
          #   @param description [String]
          #   @param headline [String]
          #   @param url [String]
        end

        # @see WhopSDK::Models::AdUpdateParams::LeadForm#disclaimer
        class Disclaimer < WhopSDK::Internal::Type::BaseModel
          # @!attribute body
          #
          #   @return [String, nil]
          optional :body, String

          # @!attribute checkboxes
          #
          #   @return [Array<WhopSDK::Models::AdUpdateParams::LeadForm::Disclaimer::Checkbox>, nil]
          optional :checkboxes,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdateParams::LeadForm::Disclaimer::Checkbox] }

          # @!attribute title
          #
          #   @return [String, nil]
          optional :title, String

          # @!method initialize(body: nil, checkboxes: nil, title: nil)
          #   Optional custom consent disclaimer with checkboxes.
          #
          #   @param body [String]
          #   @param checkboxes [Array<WhopSDK::Models::AdUpdateParams::LeadForm::Disclaimer::Checkbox>]
          #   @param title [String]

          class Checkbox < WhopSDK::Internal::Type::BaseModel
            # @!attribute checked_by_default
            #
            #   @return [Boolean, nil]
            optional :checked_by_default, WhopSDK::Internal::Type::Boolean

            # @!attribute key
            #
            #   @return [String, nil]
            optional :key, String

            # @!attribute required
            #
            #   @return [Boolean, nil]
            optional :required, WhopSDK::Internal::Type::Boolean

            # @!attribute text
            #
            #   @return [String, nil]
            optional :text, String

            # @!method initialize(checked_by_default: nil, key: nil, required: nil, text: nil)
            #   @param checked_by_default [Boolean]
            #   @param key [String]
            #   @param required [Boolean]
            #   @param text [String]
          end
        end

        # more_volume (default) is quickest to submit; higher_intent adds a confirmation
        # step.
        #
        # @see WhopSDK::Models::AdUpdateParams::LeadForm#form_type
        module FormType
          extend WhopSDK::Internal::Type::Enum

          MORE_VOLUME = :more_volume
          HIGHER_INTENT = :higher_intent

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::AdUpdateParams::LeadForm#intro
        class Intro < WhopSDK::Internal::Type::BaseModel
          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute headline
          #
          #   @return [String, nil]
          optional :headline, String

          # @!method initialize(description: nil, headline: nil)
          #   Optional intro screen shown before the questions.
          #
          #   @param description [String]
          #   @param headline [String]
        end

        # @see WhopSDK::Models::AdUpdateParams::LeadForm#privacy_policy
        class PrivacyPolicy < WhopSDK::Internal::Type::BaseModel
          # @!attribute link_text
          #
          #   @return [String, nil]
          optional :link_text, String

          # @!attribute url
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(link_text: nil, url: nil)
          #   Your privacy policy. url is required by Meta.
          #
          #   @param link_text [String]
          #   @param url [String]
        end

        class Question < WhopSDK::Internal::Type::BaseModel
          # @!attribute format_
          #
          #   @return [Symbol, WhopSDK::Models::AdUpdateParams::LeadForm::Question::Format, nil]
          optional :format_,
                   enum: -> {
                     WhopSDK::AdUpdateParams::LeadForm::Question::Format
                   },
                   api_name: :format

          # @!attribute label
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute options
          #
          #   @return [Array<WhopSDK::Models::AdUpdateParams::LeadForm::Question::Option>, nil]
          optional :options,
                   -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::AdUpdateParams::LeadForm::Question::Option] }

          # @!attribute type
          #
          #   @return [Symbol, WhopSDK::Models::AdUpdateParams::LeadForm::Question::Type, nil]
          optional :type, enum: -> { WhopSDK::AdUpdateParams::LeadForm::Question::Type }

          # @!method initialize(format_: nil, label: nil, options: nil, type: nil)
          #   @param format_ [Symbol, WhopSDK::Models::AdUpdateParams::LeadForm::Question::Format]
          #   @param label [String]
          #   @param options [Array<WhopSDK::Models::AdUpdateParams::LeadForm::Question::Option>]
          #   @param type [Symbol, WhopSDK::Models::AdUpdateParams::LeadForm::Question::Type]

          # @see WhopSDK::Models::AdUpdateParams::LeadForm::Question#format_
          module Format
            extend WhopSDK::Internal::Type::Enum

            SHORT_ANSWER = :short_answer
            MULTIPLE_CHOICE = :multiple_choice
            APPOINTMENT = :appointment

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Option < WhopSDK::Internal::Type::BaseModel
            # @!attribute key
            #
            #   @return [String, nil]
            optional :key, String

            # @!attribute logic
            #
            #   @return [WhopSDK::Models::AdUpdateParams::LeadForm::Question::Option::Logic, nil]
            optional :logic, -> { WhopSDK::AdUpdateParams::LeadForm::Question::Option::Logic }

            # @!attribute value
            #
            #   @return [String, nil]
            optional :value, String

            # @!method initialize(key: nil, logic: nil, value: nil)
            #   @param key [String]
            #   @param logic [WhopSDK::Models::AdUpdateParams::LeadForm::Question::Option::Logic]
            #   @param value [String]

            # @see WhopSDK::Models::AdUpdateParams::LeadForm::Question::Option#logic
            class Logic < WhopSDK::Internal::Type::BaseModel
              # @!attribute action
              #
              #   @return [Symbol, WhopSDK::Models::AdUpdateParams::LeadForm::Question::Option::Logic::Action, nil]
              optional :action, enum: -> { WhopSDK::AdUpdateParams::LeadForm::Question::Option::Logic::Action }

              # @!attribute target_end_page_index
              #
              #   @return [Integer, nil]
              optional :target_end_page_index, Integer

              # @!attribute target_question_index
              #
              #   @return [Integer, nil]
              optional :target_question_index, Integer

              # @!method initialize(action: nil, target_end_page_index: nil, target_question_index: nil)
              #   @param action [Symbol, WhopSDK::Models::AdUpdateParams::LeadForm::Question::Option::Logic::Action]
              #   @param target_end_page_index [Integer]
              #   @param target_question_index [Integer]

              # @see WhopSDK::Models::AdUpdateParams::LeadForm::Question::Option::Logic#action
              module Action
                extend WhopSDK::Internal::Type::Enum

                GO_TO_QUESTION = :go_to_question
                SUBMIT_FORM = :submit_form
                CLOSE_FORM = :close_form

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @see WhopSDK::Models::AdUpdateParams::LeadForm::Question#type
          module Type
            extend WhopSDK::Internal::Type::Enum

            EMAIL = :email
            PHONE = :phone
            FULL_NAME = :full_name
            FIRST_NAME = :first_name
            LAST_NAME = :last_name
            CITY = :city
            STATE = :state
            ZIP = :zip
            COUNTRY = :country
            STREET_ADDRESS = :street_address
            JOB_TITLE = :job_title
            COMPANY_NAME = :company_name
            WORK_EMAIL = :work_email
            WORK_PHONE_NUMBER = :work_phone_number
            DOB = :dob
            GENDER = :gender
            MARITAL_STATUS = :marital_status
            RELATIONSHIP_STATUS = :relationship_status
            MILITARY_STATUS = :military_status
            DATE_TIME = :date_time
            CUSTOM = :custom

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class MessagingConfig < WhopSDK::Internal::Type::BaseModel
        # @!attribute keyword
        #
        #   @return [String, nil]
        optional :keyword, String

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(keyword: nil, message: nil)
        #   Click-to-message welcome copy: the greeting (message) and the ice-breaker prompt
        #   (keyword).
        #
        #   @param keyword [String]
        #   @param message [String]
      end

      # Which network post_id refers to — facebook (a page post) or instagram (a media
      # id). Authoritative; when omitted the source is inferred from the id shape.
      module PostSource
        extend WhopSDK::Internal::Type::Enum

        FACEBOOK = :facebook
        INSTAGRAM = :instagram

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class SocialAccount < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(id: nil)
        #   @param id [String]
      end
    end
  end
end
