# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#update
    class CompanyUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute banner_image
      #   The company's banner image. Accepts PNG or JPEG format.
      #
      #   @return [WhopSDK::Models::CompanyUpdateParams::BannerImage, nil]
      optional :banner_image, -> { WhopSDK::CompanyUpdateParams::BannerImage }, nil?: true

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      optional :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute description
      #   A promotional pitch displayed to potential customers on the company's store
      #   page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute industry_group
      #   The different industry groups a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryGroups, nil]
      optional :industry_group, enum: -> { WhopSDK::IndustryGroups }, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      optional :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute logo
      #   The company's logo image. Accepts PNG, JPEG, or GIF format.
      #
      #   @return [WhopSDK::Models::CompanyUpdateParams::Logo, nil]
      optional :logo, -> { WhopSDK::CompanyUpdateParams::Logo }, nil?: true

      # @!attribute send_customer_emails
      #   Whether Whop sends transactional emails (receipts, renewals, cancelations) to
      #   customers on behalf of this company.
      #
      #   @return [Boolean, nil]
      optional :send_customer_emails, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute target_audience
      #   The target audience for this company (e.g., 'beginner day traders aged 18-25
      #   looking to learn options').
      #
      #   @return [String, nil]
      optional :target_audience, String, nil?: true

      # @!attribute title
      #   The display name of the company shown to customers.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(banner_image: nil, business_type: nil, description: nil, industry_group: nil, industry_type: nil, logo: nil, send_customer_emails: nil, target_audience: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::CompanyUpdateParams} for more details.
      #
      #   @param banner_image [WhopSDK::Models::CompanyUpdateParams::BannerImage, nil] The company's banner image. Accepts PNG or JPEG format.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param description [String, nil] A promotional pitch displayed to potential customers on the company's store page
      #
      #   @param industry_group [Symbol, WhopSDK::Models::IndustryGroups, nil] The different industry groups a company can be in.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param logo [WhopSDK::Models::CompanyUpdateParams::Logo, nil] The company's logo image. Accepts PNG, JPEG, or GIF format.
      #
      #   @param send_customer_emails [Boolean, nil] Whether Whop sends transactional emails (receipts, renewals, cancelations) to cu
      #
      #   @param target_audience [String, nil] The target audience for this company (e.g., 'beginner day traders aged 18-25 loo
      #
      #   @param title [String, nil] The display name of the company shown to customers.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class BannerImage < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company's banner image. Accepts PNG or JPEG format.
        #
        #   @param id [String] The ID of an existing file object.
      end

      class Logo < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing file object.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The company's logo image. Accepts PNG, JPEG, or GIF format.
        #
        #   @param id [String] The ID of an existing file object.
      end
    end
  end
end
