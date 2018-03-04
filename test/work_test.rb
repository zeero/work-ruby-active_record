require 'minitest/autorun'
require 'minitest/stub_any_instance'

require 'work'

describe WorkSample do
  it 'should show all records' do
    work = WorkSample.new
    len = work.show.length
    assert_equal len, 2
  end
end

