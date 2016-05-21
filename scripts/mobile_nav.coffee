---
---
document.addEventListener "DOMContentLoaded", (event) ->
  expandHandler = (e)->
    header.classList.toggle('header--expand')
    body.classList.toggle('body--expand')
    e.preventDefault()
    return false
  expandButton = document.getElementById('site-header__expand-button')
  header = document.getElementById('site-header')
  body = document.getElementsByTagName('body')[0]
  expandButton.addEventListener('mousedown', expandHandler, false)
  expandButton.addEventListener('touchstart', expandHandler, false)
  # if (window.innerWidth > 820)
  #   #
  # window.onresize = (event) ->
  #   if window.innerWidth > 820
  #     #
  #   else
  #     #
