#= require jquery.mjs.nestedSortable

$ ->
  $("[data-sortable-type=plain]").each ->
    $this = $(@)
    $this.sortable
      revert: 250
      update: ->
        $this.sortable("disable")
        $.ajax
          url: $this.data("sortable-url")
          type: "post"
          data: $this.sortable("serialize")
        .always ->
          $this.sortable("enable")
    .disableSelection()

  $(".index_as_sortable [data-sortable-type]").each ->
    $this = $(@)
    if $this.data('sortable-type') == "tree"
      max_levels = $this.data('max-levels')
      tab_hack = 20 # nestedSortable default
    else
      max_levels = 1
      tab_hack = 99999

    $this.nestedSortable
      forcePlaceholderSize: true
      forceHelperSizeType: true
      errorClass: 'cantdoit'
      disableNesting: 'cantdoit'
      handle: '> .item'
      listType: 'ol'
      items: 'li'
      opacity: .6
      placeholder: 'placeholder'
      revert: 250
      maxLevels: max_levels,
      tabSize: tab_hack
      protectRoot: $this.data('protect-root')
      # prevent drag flickers
      tolerance: 'pointer'
      toleranceElement: '> div'
      update: ->
        $this.nestedSortable("disable")
        $.ajax
          url: $this.data("sortable-url")
          type: "post"
          data: $this.nestedSortable("serialize")
        .error (error)->
          errors = JSON.parse(error.responseText)
          message = ""

          $.each errors, ->
            el = this
            $.each el, ->
              message += this[0] + "\n"

          alert message
          window.location.reload()

        .always ->
          $this.find('.item').each (index) ->
            if index % 2
              $(this).removeClass('odd').addClass('even')
            else
              $(this).removeClass('even').addClass('odd')
          $this.nestedSortable("enable")
