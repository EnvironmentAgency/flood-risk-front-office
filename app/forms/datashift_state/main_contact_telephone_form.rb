module DatashiftState
  module Steps
    class MainContactTelephoneForm < BaseForm

      def self.factory(enrollment)
        new(enrollment)
      end

      # Define the attributes on the inbound model, that you want included in your form/validation with
      # property :name
      # For full API see  - https://github.com/apotonick/reform
        property :telephone


      def params_key
        :main_contact_telephone
      end

      def save
        super
      end
    end
  end
end