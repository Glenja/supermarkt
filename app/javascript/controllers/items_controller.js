import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = [ "query" ]

  connect() {
    console.log("hello from items_controller!")
  };
  apiQuery () {

    console.log(this.queryTarget.innerHTML)

    console.log("querying the database")
    fetch('https://api.spoonacular.com/food/ingredients/autocomplete?query=appl&apiKey=1613fe995a224494910194cdb1b5401f')
    .then(response => response.json())
    .then(data => console.log(data));



    // const searchIngredients = query => {
    //   console.log("searching API")
    //   //Forming the query URL
    //   const API_KEY = '1613fe995a224494910194cdb1b5401f';
    //   let numberResults = 6
    //   const url = 'https://api.spoonacular.com/food/ingredients/autocomplete?'+
    //   'apiKey='+ API_KEY +
    //   '&query='+ query +
    //   '&number=' + numberResults
    //   console.log(query);
    //   console.log(API_KEY);
    //   console.log(numberResults);

    //   //Sending request
    //   const response = fetch(url);
    //   const ingredientResults = response.json();//convert response to JSON
    //   outputHTML(ingredientResults);
    //   console.log(ingredientResults);
    //   console.log(response);
    // }
  }
}

// https://api.spoonacular.com/food/ingredients/autocomplete?apiKey=1613fe995a224494910194cdb1b5401f&query=
