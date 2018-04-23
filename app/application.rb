class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now

  '  if t >= 12 then
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end'

    resp.write "#{t}"
    resp.finish
  end

end
