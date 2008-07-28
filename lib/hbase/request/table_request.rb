module HBase
  module Request
    class TableRequest < BasicRequest
      attr_reader :name
      attr_reader :body

      def initialize(name)
        super("/#{name}")
      end

      def show
        @path
      end

      def regions(start_row = nil, end_row = nil)
        @path << "/regions"
      end
    end
  end
end
