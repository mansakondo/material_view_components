import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.warnings = true
application.debug    = false
window.Stimulus      = application

// Register components controllers
import registerControllersFrom from "./helpers.js"

registerControllersFrom(require("../../components/**/*_controller.js"))

export { application }
