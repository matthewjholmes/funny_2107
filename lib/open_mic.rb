class OpenMic

  attr_reader :location, :date, :performers

  def initialize(attributes = {location: location, date: date})
    # require "pry"; binding.pry
    @location = attributes[:location]
    @date = attributes[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    joke_bucket = []
    i = @performers.each do |performer|
      joke_bucket << performer.jokes
    end
    flat_joke_bucket = joke_bucket.flatten
    flat_joke_bucket.uniq.length != flat_joke_bucket.length
  end
  #REALLY WISH I COULD HAVE FIGURED OUT THIS FANCY THING FROM THE INTERNET:
    # @performers.select.with_index do |e, i|
    #   i
    #   self.index(e)
    #   i != self.index(e)
    # end
  # end
end
