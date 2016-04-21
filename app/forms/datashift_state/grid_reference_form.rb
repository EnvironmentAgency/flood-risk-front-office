module DatashiftState
  module Steps
    class GridReferenceForm < BaseForm

      def self.factory(enrollment)
        new(enrollment)
      end

      # Define the attributes on the inbound model, that you want included in your form/validation with
      # property :name
      # For full API see  - https://github.com/apotonick/reform
        property :grid_reference


      def params_key
        :grid_reference
      end

      def save
        super
      end
    end
  end
end
