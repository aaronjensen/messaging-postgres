require_relative '../../../../automated_init'

context "Write" do
  context "Substitute" do
    context "Message" do
      context "Reply" do
        context "Raise Expected Version Error" do
          message = Controls::Message.example

          writer = Write::Substitute.build

          writer.raise_expected_version_error!

          test "Expected version is no_stream" do
            assert proc { writer.reply(message) } do
              raises_error? MessageStore::ExpectedVersion::Error
            end
          end
        end
      end
    end
  end
end
