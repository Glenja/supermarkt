import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["category", "az", "za", "list", "split"]

  categorise() {
    this.categoryTarget.className = ""
    this.azTarget.className = "hide-content"
    this.zaTarget.className = "hide-content"
    this.listTarget.className = "hide-content"
    this.splitTarget.className = "hide-content"
  }
  az() {
    // console.log("az")
    this.categoryTarget.className = "hide-content"
    this.azTarget.className = ""
    this.zaTarget.className = "hide-content"
    this.listTarget.className = "hide-content"
    this.splitTarget.className = "hide-content"
  }
  za() {
    // console.log("za")
    this.categoryTarget.className = "hide-content"
    this.azTarget.className = "hide-content"
    this.zaTarget.className = ""
    this.listTarget.className = "hide-content"
    this.splitTarget.className = "hide-content"
  }
  list() {
    // console.log("list")
    console.log(this)
    this.categoryTarget.className = "hide-content"
    this.azTarget.className = "hide-content"
    this.zaTarget.className = "hide-content"
    this.listTarget.className = ""
    this.splitTarget.className = "hide-content"
  }
  split() {
    // console.log("list")
    this.categoryTarget.className = "hide-content"
    this.azTarget.className = "hide-content"
    this.zaTarget.className = "hide-content"
    this.listTarget.className = "hide-content"
    this.splitTarget.className = ""
  }
}
