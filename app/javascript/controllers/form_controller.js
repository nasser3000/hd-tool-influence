import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.addEventListener("turbo:submit-start", () => {
      const btn = this.element.querySelector("[type=submit]")
      if (btn) {
        btn.disabled = true
        btn.textContent = "Envoi en cours… 🍦"
      }
    })
  }
}
