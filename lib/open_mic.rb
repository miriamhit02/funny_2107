class OpenMic
  attr_reader :location, :date, :performers

  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    jokes = []
    @performers.each do |user|
      jokes << user.jokes
    end
    jokes.flatten
    jokes.length != jokes.uniq.length
  end
end
