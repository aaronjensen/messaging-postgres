module Messaging
  module StreamName
    extend self

    def self.included(cls)
      cls.class_exec do
        include Messaging::Category
      end
    end

    def stream_name(id, category=nil, type: nil, types: nil)
      category ||= self.category
      MessageStore::StreamName.stream_name(category, id, type: type, types: types)
    end

    def category_stream_name(category=nil, type: nil, types: nil)
      category ||= self.category
      MessageStore::StreamName.stream_name(category, type: type, types: types)
    end

    def command_stream_name(id, category=nil, type: nil, types: nil)
      category ||= self.category
      types ||= []
      types.unshift('command')
      types << type unless type == nil
      MessageStore::StreamName.stream_name(category, id, types: types)
    end

    def command_category_stream_name(category=nil, type: nil, types: nil)
      category ||= self.category
      types ||= []
      types.unshift('command')
      types << type unless type == nil
      MessageStore::StreamName.stream_name(category, types: types)
    end

    def self.get_category(stream_name)
      MessageStore::StreamName.get_category(stream_name)
    end

    def self.get_id(stream_name)
      MessageStore::StreamName.get_id stream_name
    end
  end
end
