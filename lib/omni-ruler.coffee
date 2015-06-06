OmniRulerView = require './omni-ruler-view'

module.exports =
  config:
    columns:
      default: []
      type: 'array'
      items:
        type: 'string'

  activate: ->
    atom.workspace.observeTextEditors (editor) ->
      editorElement = atom.views.getView(editor)
      omniRulerView = new OmniRulerView().initialize(editor, editorElement)
