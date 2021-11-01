import BaseComponentController from "./base_component_controller";

export default class extends BaseComponentController {
  connect() {
    super.connect(function() {
      const shadow = this.attachShadow({mode: "open"})
      const style  = this.querySelector("link")
      const button = this.querySelector("button")

      shadow.appendChild(style)
      shadow.appendChild(button)
    })
  }
}
