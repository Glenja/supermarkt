import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["category", "az", "za", "list", "split", "categoryIcon", "azIcon", "zaIcon", "listIcon", "splitIcon"]

  categorise() {
    this.categoryTarget.className = ""
    this.azTarget.className = "hide-content"
    this.zaTarget.className = "hide-content"
    this.listTarget.className = "hide-content"
    this.splitTarget.className = "hide-content"
    this.categoryIconTarget.className = "btn-list-icon-active"
    this.azIconTarget.className = "btn-list-icon"
    this.zaIconTarget.className = "btn-list-icon"
    this.listIconTarget.className = "btn-list-icon"
    this.splitIconTarget.className = "btn-list-icon"
  }
  az() {
    // console.log("az")
    this.categoryTarget.className = "hide-content"
    this.azTarget.className = ""
    this.zaTarget.className = "hide-content"
    this.listTarget.className = "hide-content"
    this.splitTarget.className = "hide-content"
    this.categoryIconTarget.className = "btn-list-icon"
    this.azIconTarget.className = "btn-list-icon-active"
    this.zaIconTarget.className = "btn-list-icon"
    this.listIconTarget.className = "btn-list-icon"
    this.splitIconTarget.className = "btn-list-icon"
  }
  za() {
    // console.log("za")
    console.log(this)
    this.categoryTarget.className = "hide-content"
    this.azTarget.className = "hide-content"
    this.zaTarget.className = ""
    this.listTarget.className = "hide-content"
    this.splitTarget.className = "hide-content"
    this.categoryIconTarget.className = "btn-list-icon"
    this.azIconTarget.className = "btn-list-icon"
    this.zaIconTarget.className = "btn-list-icon-active"
    this.listIconTarget.className = "btn-list-icon"
    this.splitIconTarget.className = "btn-list-icon"
  }
  list() {
    // console.log("list")
    this.categoryTarget.className = "hide-content"
    this.azTarget.className = "hide-content"
    this.zaTarget.className = "hide-content"
    this.listTarget.className = ""
    this.splitTarget.className = "hide-content"
    this.categoryIconTarget.className = "btn-list-icon"
    this.azIconTarget.className = "btn-list-icon"
    this.zaIconTarget.className = "btn-list-icon"
    this.listIconTarget.className = "btn-list-icon-active"
    this.splitIconTarget.className = "btn-list-icon"
  }
  split() {
    // console.log("list")
    this.categoryTarget.className = "hide-content"
    this.azTarget.className = "hide-content"
    this.zaTarget.className = "hide-content"
    this.listTarget.className = "hide-content"
    this.splitTarget.className = ""
    this.categoryIconTarget.className = "btn-list-icon"
    this.azIconTarget.className = "btn-list-icon"
    this.zaIconTarget.className = "btn-list-icon"
    this.listIconTarget.className = "btn-list-icon"
    this.splitIconTarget.className = "btn-list-icon-active"
  }




}
