module Volter
  class Database

    DEFAULT_OPTS = {:host => "localhost", :port => 8080}

    def self.connect(opts={})
      VoltRb::Client.new(DEFAULT_OPTS.merge(opts))
    end

  end
end
