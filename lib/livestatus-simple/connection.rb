require "livestatus-simple/handler"
require "livestatus-simple/memoize"
require "forwardable"

module LivestatusSimple

  class Connection
    extend Forwardable

    def_delegators :handler, :get, :command

    def initialize(config)
      @config = config.symbolize_keys!
    end

    def handler
      case @config[:uri].to_s
        when /^tcp:\/\//
          TCPHandler.new(self, @config)
        when /^unix:\/\//
          UnixHandler.new(self, @config)
        else
          raise ArgumentError, "unknown uri type: #{@config[:uri]}"
      end
    end

    memoize :handler
  end

end
