module Volter
  module Core
    extend ActiveSupport::Concern

    included do
      def self.connection_handler
        Volter::RuntimeRegistry.connection_handler || Volter::Database.connect
      end

      def self.connection_handler=(handler)
        Volter::RuntimeRegistry.connection_handler = handler
      end
    end

  end
end
