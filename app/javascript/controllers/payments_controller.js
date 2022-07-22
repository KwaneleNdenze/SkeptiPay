import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static targets = ["modal"]

  show(event) {
    const id = event.currentTarget.dataset.id

    this.modalTargets.forEach((element, index) => {
      if (element.dataset.id === id) {
        element.classList.remove('hidden')
      } else {
        element.classList.add('hidden')
      }
    });

  }
}
