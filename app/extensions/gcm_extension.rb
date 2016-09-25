require 'gcm'
require 'singleton'


class GcmExtension
  include Singleton

  def initialize
    @client = GCM.new(ENV["GCM_API_KEY"])
  end

  def client
    return @client
  end

end