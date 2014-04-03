module Volter
  class Model

    include Core

    class << self
      attr_accessor :table_name
    end

    def self.execute_sql(sql)
      response = connection_handler.invoke("@AdHoc", sql)
      #TODO: move debug data, status codes from response to methods
    end

  end
end

