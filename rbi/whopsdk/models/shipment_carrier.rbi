# typed: strong

module Whopsdk
  module Models
    # The carrier of a shipment
    module ShipmentCarrier
      extend Whopsdk::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Whopsdk::ShipmentCarrier) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACCURATE = T.let(:accurate, Whopsdk::ShipmentCarrier::TaggedSymbol)
      AMAZON_MWS = T.let(:amazon_mws, Whopsdk::ShipmentCarrier::TaggedSymbol)
      AMAZON_SHIPPING =
        T.let(:amazon_shipping, Whopsdk::ShipmentCarrier::TaggedSymbol)
      APC = T.let(:apc, Whopsdk::ShipmentCarrier::TaggedSymbol)
      ASENDIA_USA = T.let(:asendia_usa, Whopsdk::ShipmentCarrier::TaggedSymbol)
      AUSTRALIA_POST =
        T.let(:australia_post, Whopsdk::ShipmentCarrier::TaggedSymbol)
      AXLEHIRE_V3 = T.let(:axlehire_v3, Whopsdk::ShipmentCarrier::TaggedSymbol)
      BETTER_TRUCKS =
        T.let(:better_trucks, Whopsdk::ShipmentCarrier::TaggedSymbol)
      CANADA_POST = T.let(:canada_post, Whopsdk::ShipmentCarrier::TaggedSymbol)
      CANPAR = T.let(:canpar, Whopsdk::ShipmentCarrier::TaggedSymbol)
      COLUMBUS_LAST_MILE =
        T.let(:columbus_last_mile, Whopsdk::ShipmentCarrier::TaggedSymbol)
      CHRONOPOST = T.let(:chronopost, Whopsdk::ShipmentCarrier::TaggedSymbol)
      CLOUD_SORT = T.let(:cloud_sort, Whopsdk::ShipmentCarrier::TaggedSymbol)
      COURIER_EXPRESS =
        T.let(:courier_express, Whopsdk::ShipmentCarrier::TaggedSymbol)
      COURIERS_PLEASE =
        T.let(:couriers_please, Whopsdk::ShipmentCarrier::TaggedSymbol)
      CS_LOGISTICS =
        T.let(:cs_logistics, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DAI_POST = T.let(:dai_post, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DEUTSCHE_POST_UK =
        T.let(:deutsche_post_uk, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DEUTSCHE_POST =
        T.let(:deutsche_post, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DHL_ECOMMERCE_ASIA =
        T.let(:dhl_ecommerce_asia, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DHL_ECS = T.let(:dhl_ecs, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DHL_EXPRESS = T.let(:dhl_express, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DHL_PAKET = T.let(:dhl_paket, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DOOR_DASH = T.let(:door_dash, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DPD_NL = T.let(:dpd_nl, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DPD_UK = T.let(:dpd_uk, Whopsdk::ShipmentCarrier::TaggedSymbol)
      DPD = T.let(:dpd, Whopsdk::ShipmentCarrier::TaggedSymbol)
      EPOST_GLOBAL =
        T.let(:epost_global, Whopsdk::ShipmentCarrier::TaggedSymbol)
      ESTAFETA = T.let(:estafeta, Whopsdk::ShipmentCarrier::TaggedSymbol)
      EVRI = T.let(:evri, Whopsdk::ShipmentCarrier::TaggedSymbol)
      FASTWAY = T.let(:fastway, Whopsdk::ShipmentCarrier::TaggedSymbol)
      FEDEX_CROSS_BORDER =
        T.let(:fedex_cross_border, Whopsdk::ShipmentCarrier::TaggedSymbol)
      FEDEX_DEFAULT =
        T.let(:fedex_default, Whopsdk::ShipmentCarrier::TaggedSymbol)
      FEDEX_MAILVIEW =
        T.let(:fedex_mailview, Whopsdk::ShipmentCarrier::TaggedSymbol)
      FEDEX_SMARTPOST =
        T.let(:fedex_smartpost, Whopsdk::ShipmentCarrier::TaggedSymbol)
      FEDEX = T.let(:fedex, Whopsdk::ShipmentCarrier::TaggedSymbol)
      FIRST_CHOICE =
        T.let(:first_choice, Whopsdk::ShipmentCarrier::TaggedSymbol)
      FIRST_MILE = T.let(:first_mile, Whopsdk::ShipmentCarrier::TaggedSymbol)
      FLEXPORT = T.let(:flexport, Whopsdk::ShipmentCarrier::TaggedSymbol)
      GIO = T.let(:gio, Whopsdk::ShipmentCarrier::TaggedSymbol)
      GIO_EXPRESS = T.let(:gio_express, Whopsdk::ShipmentCarrier::TaggedSymbol)
      GSO = T.let(:gso, Whopsdk::ShipmentCarrier::TaggedSymbol)
      HAILIFY = T.let(:hailify, Whopsdk::ShipmentCarrier::TaggedSymbol)
      HENRY = T.let(:henry, Whopsdk::ShipmentCarrier::TaggedSymbol)
      INTERLINK_EXPRESS =
        T.let(:interlink_express, Whopsdk::ShipmentCarrier::TaggedSymbol)
      JET = T.let(:jet, Whopsdk::ShipmentCarrier::TaggedSymbol)
      KURONEKO_YAMATO =
        T.let(:kuroneko_yamato, Whopsdk::ShipmentCarrier::TaggedSymbol)
      LA_POST = T.let(:la_post, Whopsdk::ShipmentCarrier::TaggedSymbol)
      LASERSHIP_V2 =
        T.let(:lasership_v2, Whopsdk::ShipmentCarrier::TaggedSymbol)
      LOOMIS_EXPRESS =
        T.let(:loomis_express, Whopsdk::ShipmentCarrier::TaggedSymbol)
      LSO = T.let(:lso, Whopsdk::ShipmentCarrier::TaggedSymbol)
      ONTRAC = T.let(:ontrac, Whopsdk::ShipmentCarrier::TaggedSymbol)
      OPTIMA = T.let(:optima, Whopsdk::ShipmentCarrier::TaggedSymbol)
      OSM_WORLDWIDE =
        T.let(:osm_worldwide, Whopsdk::ShipmentCarrier::TaggedSymbol)
      PARCELFORCE = T.let(:parcelforce, Whopsdk::ShipmentCarrier::TaggedSymbol)
      PARCLL = T.let(:parcll, Whopsdk::ShipmentCarrier::TaggedSymbol)
      PASSPORT_GLOBAL =
        T.let(:passport_global, Whopsdk::ShipmentCarrier::TaggedSymbol)
      POST_NL = T.let(:post_nl, Whopsdk::ShipmentCarrier::TaggedSymbol)
      PUROLATOR = T.let(:purolator, Whopsdk::ShipmentCarrier::TaggedSymbol)
      QUICK = T.let(:quick, Whopsdk::ShipmentCarrier::TaggedSymbol)
      ROYAL_MAIL = T.let(:royal_mail, Whopsdk::ShipmentCarrier::TaggedSymbol)
      OMNI_PARCEL = T.let(:omni_parcel, Whopsdk::ShipmentCarrier::TaggedSymbol)
      SENDLE = T.let(:sendle, Whopsdk::ShipmentCarrier::TaggedSymbol)
      SF_EXPRESS = T.let(:sf_express, Whopsdk::ShipmentCarrier::TaggedSymbol)
      SMART_KARGO = T.let(:smart_kargo, Whopsdk::ShipmentCarrier::TaggedSymbol)
      SONIC = T.let(:sonic, Whopsdk::ShipmentCarrier::TaggedSymbol)
      SPEE_DEE = T.let(:spee_dee, Whopsdk::ShipmentCarrier::TaggedSymbol)
      SWYFT = T.let(:swyft, Whopsdk::ShipmentCarrier::TaggedSymbol)
      TFORCE = T.let(:tforce, Whopsdk::ShipmentCarrier::TaggedSymbol)
      UDS = T.let(:uds, Whopsdk::ShipmentCarrier::TaggedSymbol)
      UPS_IPARCEL = T.let(:ups_iparcel, Whopsdk::ShipmentCarrier::TaggedSymbol)
      UPS_MAIL_INNOVATIONS =
        T.let(:ups_mail_innovations, Whopsdk::ShipmentCarrier::TaggedSymbol)
      UPS = T.let(:ups, Whopsdk::ShipmentCarrier::TaggedSymbol)
      USPS = T.let(:usps, Whopsdk::ShipmentCarrier::TaggedSymbol)
      VEHO = T.let(:veho, Whopsdk::ShipmentCarrier::TaggedSymbol)
      YANWEN = T.let(:yanwen, Whopsdk::ShipmentCarrier::TaggedSymbol)

      sig { override.returns(T::Array[Whopsdk::ShipmentCarrier::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
