require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now

    resp.write "#{time}\n"
    if time.hour > 12
      resp.write "#{time}\n Afternoon"
    else
      resp.write "#{time}\n Morning"
    end

    resp.finish
  end

end
