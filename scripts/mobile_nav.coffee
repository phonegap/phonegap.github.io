---
---
document.addEventListener "DOMContentLoaded", (event) ->
  console.log('mobile-nav')
  expandHandler = (e)->
    console.log('tapped')
    e.stopPropagation()
  expandButton = document.getElementById('site-header__expand-button');
  expandButton.addEventListener('touchstart', expandHandler, false);
  expandButton.addEventListener('click', expandHandler, false);
  # if (window.innerWidth > 820)
  #   #
  # window.onresize = (event) ->
  #   if window.innerWidth > 820
  #     #
  #   else
  #     #
