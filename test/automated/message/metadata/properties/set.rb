require_relative '../../../automated_init'

context "Message" do
  context "Metadata" do
    context "Properties" do
      context "Set" do
        context do
          metadata = Messaging::Message::Metadata.new

          name = :some_property
          control_value = 'some property value'

          metadata.set_property(name, control_value)

          value = metadata.properties[name]

          test "Value is in the properties hash" do
            assert(value == control_value)
          end
        end

        context "Name Is Not a Symbol" do
          metadata = Messaging::Message::Metadata.new

          name = 'some_property'
          value = 'some property value'

          test "Is an error" do
            assert_raises Message::Metadata::Error do
              metadata.set_property(name, value)
            end
          end
        end
      end
    end
  end
end
