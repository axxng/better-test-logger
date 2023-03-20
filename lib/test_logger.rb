class TestLogger < Logger
  def initialize
    @string_io = StringIO.new
    super(@string_io)
  end

  def messages
    @string_io.string
  end

  def clear
    @string_io.reopen
  end
end
