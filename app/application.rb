class Application

@@item = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/"
      item_to_add = req.params["item"]
        if @@items.include?(item_to_add)
      #resp.write "You requested the items"
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
