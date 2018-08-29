class Application

@@item = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/"
      item_to_add = req.params["item"]
      @@item.include?(item_to_add)
          item_to_add.price
      #resp.write "You requested the items"
    else
      resp.write "Item not found"
      resp.status = 404
    end

    resp.finish
  end
end
