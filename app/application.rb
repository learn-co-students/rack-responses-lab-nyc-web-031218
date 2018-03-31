# require 'pry'
class Application

  def call(env)
    t_morn = Time.new().hour
   t_noon = Time.new().hour

    resp = Rack::Response.new


  if t_noon > 12
    resp.write("Good Afternoon!")
    resp.write("Good Morning!")
  elsif t_morn < 12
    resp.write("Good Morning!")
  end

    resp.finish

  end

end
