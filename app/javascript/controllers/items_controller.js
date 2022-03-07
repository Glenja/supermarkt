import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = [ "query" ]
  static values = {
    key: String
  }

  connect() {
    console.log("hello from items_controller!")
  };

  // 1. use autocomplete API to suggest ingredients
  apiQuery () {
    fetch(`https://api.spoonacular.com/food/ingredients/autocomplete?query=${this.queryTarget.value}&apiKey=${this.keyValue}`)
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      results.innerHTML = ''
      data.forEach((result, index) => {
        const searchResult = `<li class="search-inline-item" data-action="click->items#addText">
        <p>${result.name}</p>
        </li>`
        results.insertAdjacentHTML("beforeend",searchResult)
      })
    })
  }

  // 2. On click, populate the item total with the ingredient cicked and pass the ingredient to findID(3)
  addText(event) {
    let text = event.target.innerHTML
    document.getElementById('item_name').value = text
    this.findId(text)
    document.getElementById('results').innerHTML = ''
  }

  // 3. Use GET ingredient search API to find ID and pass to findAisle(4)
  findId (text) {
    fetch(`https://api.spoonacular.com/food/ingredients/search?query=${text}&number=1&sortDirection=desc&apiKey=1613fe995a224494910194cdb1b5401f`)
    .then(response => response.json())
    .then((data) => {
      this.findAisle(data["results"][0]['id'])
    })
  }

  // 4. Use GET ingredient information API to find aisle
  findAisle(id) {
    console.log(`ID passed in function: ${id}`)
    fetch(`https://api.spoonacular.com/food/ingredients/${id}/information?amount=1&apiKey=1613fe995a224494910194cdb1b5401f`)
    .then(response => response.json())
    .then((data) => {
      console.log(data)
      let aisle = data['aisle']
      let price = data['estimatedCost']['value']/100
      price = price.toFixed(2)
      console.log(price)
      document.getElementById("item_category").value = aisle
      document.getElementById("item_price").value = price
    })
  }

}
