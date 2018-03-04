require 'active_record'

require_relative 'db'

# work with sample table
class WorkSample
  def show
    puts Sample.all
  end
end

