import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = [ "query" ]

  connect() {
    console.log("hello from items_controller!")
  };

  apiQuery () {

    console.log(this.queryTarget.value)

    console.log("querying the database")
    fetch(`https://api.spoonacular.com/food/ingredients/autocomplete?query=${this.queryTarget.value}&apiKey=1613fe995a224494910194cdb1b5401f`)
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      data.forEach((result) => {
        const searchResult = `<li class="search-inline-item">
        <p>${result.name}</p>
        </li>`
        results.insertAdjacentHTML("beforeend",searchResult)
      })
    });
  }
}

// https://api.spoonacular.com/food/ingredients/autocomplete?apiKey=1613fe995a224494910194cdb1b5401f&query=
