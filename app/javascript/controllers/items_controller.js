import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = [ "query" ]
  static values = {
    key: String
  }

  connect() {
    console.log("hello from items_controller!")
  };

  addText(event) {
    document.getElementById('item_name').value = event.target.innerHTML
  }

  apiQuery () {
    console.log(this.queryTarget.value)
    console.log("querying the database")
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

}
