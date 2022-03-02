import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["category", "az", "za"]
  connect() {
    console.log("hello from StimulusJS")
  }
  categorise() {
    this.categoryTarget.className = ""
    this.azTarget.className = "hide-content"
    this.zaTarget.className = "hide-content"
    console.log(this.categoryTarget)
  }
  az() {
    // console.log("az")
    this.categoryTarget.className = "hide-content"
    this.azTarget.className = ""
    this.zaTarget.className = "hide-content"
  }
  za() {
    // console.log("za")
    this.categoryTarget.className = "hide-content"
    this.azTarget.className = "hide-content"
    this.zaTarget.className = ""
  }
}
