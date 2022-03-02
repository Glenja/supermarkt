class ItemsController < ApplicationController
  def index
  end

  def create
    @list = List.find(params[:list_id])
    @item = Item.new
    @query = params[:query]
    # redirect_to user_list_path(current_user, @list)
  end

  def update
  end

  def destroy
  end

  private
  def item_params
  end

  def request_api(url)
    response = Excon.get(
      url,
      headers: {
        'Spoonacular-Host' => URI.parse(url).host,
        'Spoonacular-Key' => ENV.fetch(SPOONACULAR_API_KEY)
      }
    )
    return nil if response.status != 200
    x = JSON.parse(response.body)
  end

  def product_search(input)
    raise
    request_api(
      "https://api.spoonacular.com/food/products/suggest?query=#{input}&apiKey=#{SPOONACULAR_API_KEY}"
    )
  end

end
