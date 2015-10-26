---
---
document.addEventListener "DOMContentLoaded", (event) ->
  console.log('mobile-nav')
  expandHandler = (e)->
    console.log('tapped')
    header.classList.toggle('expand')
    body.classList.toggle('expand')
    e.stopPropagation()
    return false
  expandButton = document.getElementById('site-header__expand-button')
  header = document.getElementById('site-header')
  body = document.getElementsByTagName('body')[0]
  expandButton.addEventListener('mousedown', expandHandler, false)
  # if (window.innerWidth > 820)
  #   #
  # window.onresize = (event) ->
  #   if window.innerWidth > 820
  #     #
  #   else
  #     #
