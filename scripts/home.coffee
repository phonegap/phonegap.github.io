---
---
document.addEventListener "DOMContentLoaded", (event) ->
  didScroll = false

  header = document.getElementById('site-header');

  doThisStuffOnScroll = ->
    didScroll = true
    if(window.scrollY > 50)
      # not top
      header.classList.add 'scroll'
    else
      # top
      header.classList.remove 'scroll'
    return

  scrollSet = false

  setScrollHandler = () ->
    scrollSet = true
    window.onscroll = doThisStuffOnScroll
    setInterval (->
      if didScroll
        didScroll = false
      return
    ), 100
  unsetScrollHandler = () ->
    scrollSet = false
    window.onscroll = null
  if (window.innerWidth > 820)
    setScrollHandler()
  window.onresize = (event) ->
    if window.innerWidth > 820
      setScrollHandler()
    else
      unsetScrollHandler()
