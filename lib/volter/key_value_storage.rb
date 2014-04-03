module Volter
  class KeyValueStorage

    include Core

    #def self.get(key)
      #response = connection_handler.invoke("@Get", key)
    #end

    #def self.put(key, value)
      #response = connection_handler.invoke("@Put", key, value)
    #end

    #def self.remove(key)
      #response = connection_handler.invoke("@Remove", key)
    #end

    class << self
      attr_accessor :table_name

      def get(key)
        key = key.to_s
        sql = "SELECT value FROM #{@table_name} WHERE key LIKE '#{key.gsub("*", "%")}'"
        response = connection_handler.invoke("@AdHoc", sql)
        data = response.raw["results"].first["data"].first
        return data.first if data
        nil
      end

      def set(key, value)
        key = key.to_s
        value ||= 'NULL'
        if get(key)
          sql = "UPDATE #{@table_name} SET value = '#{value}' WHERE key = '#{key}'"
        else
          sql = "INSERT INTO #{@table_name} (key, value) VALUES ('#{key}', '#{value}')"
        end
        response = connection_handler.invoke("@AdHoc", sql)
      end

      def delete(key)
        key = key.to_s
        sql = "DELETE FROM #{@table_name} WHERE key LIKE '#{key.gsub("*", "%")}'"
        response = connection_handler.invoke("@AdHoc", sql)
      end

      alias :rm :delete
      alias :del :delete
      alias :destroy :delete

    end


    #def self.execute_sql(sql)
      #response = connection_handler.invoke("@AdHoc", sql)
      ##TODO: move debug data, status codes from response to methods
    #end

  end
end

