import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect(customElementCallback) {
    const elementName = this.identifier.replaceAll("--", "-")

    if (!customElements.get(elementName)) {
      customElements.define(elementName, class extends HTMLElement {
        connectedCallback() { customElementCallback.bind(this)() }
      })
    }
  }
}
