import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    if (this.supportsDeclarativeShadowDOM()) {
      console.log(`${this.identifier} controller is connected`);
      return this
    }

    const elementName = this.identifier.replaceAll("--", "-")

    if (!customElements.get(elementName)) {
      customElements.define(elementName, class extends HTMLElement {
        connectedCallback() {
          const shadow    = this.attachShadow({mode: "open"})
          const template  = this.querySelector("template")

          shadow.appendChild(template.content)
        }
      })
    }

  }

  supportsDeclarativeShadowDOM() {
    return HTMLTemplateElement.prototype.hasOwnProperty('shadowRoot')
  }
}
