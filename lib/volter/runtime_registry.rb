# * used ActiveRecord::RuntimeRegistry

module Volter
  class RuntimeRegistry
    extend ActiveSupport::PerThreadRegistry

    attr_accessor :connection_handler
  end
 end
