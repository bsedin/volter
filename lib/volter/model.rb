require 'voltrb'

module Volter
  class Model

    def initialize
      @db = VoltRb::Client.new
      #TODO: custom host, port, auth support
    end
    
    def execute_sql(sql)
      response = @db.invoke("@AdHoc", sql)
      #TODO: move debug data, status codes from response to methods
    end

  end
end

