import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "section"]

  hide() {
    this.sectionTarget.classList.add('hidden')
  }
  show() {
    this.sectionTarget.classList.remove('hidden')
  }
}
