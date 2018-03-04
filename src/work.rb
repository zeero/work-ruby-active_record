require 'active_record'

require_relative 'db'

# work with sample table
class WorkSample
  def show
    Sample.all
  end
end

