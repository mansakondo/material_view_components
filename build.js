#!/usr/bin/env node

const importGlobPlugin = require("esbuild-plugin-import-glob");

require("esbuild").build({
  entryPoints: ["app/javascript/application.js"],
  outdir: "app/assets/builds/material_view_components",
  bundle: true,
  plugins: [
    importGlobPlugin.default(),
  ],
  watch: {
    onRebuild: (err, result) => {
      if (err) console.log("Watch build failed: ", err)
      else console.log("Watch build succeeded", result);
    },
  },
}).then(result => {
  console.log("Watching...");
})
