module Messaging
  module Controls
    module Properties
      def self.example
        {
          SomeProperty.name => SomeProperty.value
        }
      end

      module SomeProperty
        def self.name
          :some_property
        end

        def self.value
          'some property value'
        end
      end

      module Random
        def self.example
          {
            SomeProperty.name => SomeProperty.value
          }
        end

        module SomeProperty
          def self.name
            :some_property
          end

          def self.value
            SecureRandom.hex
          end
        end
      end
    end
  end
end
