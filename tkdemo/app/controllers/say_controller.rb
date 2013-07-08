class SayController < ApplicationController
  def hello
    @time = Time.now
    @result = say_goodnight('Luan')
  end

  def say_goodnight(name)
    result = 'Good night, ' + name
    return result
  end

  def goodbye
  end
end
