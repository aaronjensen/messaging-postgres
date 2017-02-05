require_relative '../automated_init'

context "Stream Name" do
  example = Controls::StreamName::Named.example

  context "Macro" do
    test "Adds the category getter" do
      assert(example.respond_to? :category)
    end

    test "Adds the category setter" do
      assert(example.respond_to? :category=)
    end
  end
end
