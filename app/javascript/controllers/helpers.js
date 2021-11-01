export const controllerNameFrom = (filename) => {
  const pattern = /.*\/components\/((?:\w+\/)*)(\w+)_controller.js$/

  const controllerName = filename
    .replace(pattern, (_match, $1, $2) => {
      const scope = $1
        .replaceAll('/', '--')
        .replaceAll('_', '-')

      const name = $2
        .replaceAll('_', '-')

      return scope + name
    })

  return controllerName
}

export default registerControllersFrom = (context) => {
  const { default: componentControllers, filenames } = context

  for (let i = 0, len = componentControllers.length; i < len; i++) {
    let componentController = componentControllers[i].default
    let filename            = filenames[i]
    let name                = controllerNameFrom(filename)

    Stimulus.register(name, componentController)
    console.log(name);
  }
}
