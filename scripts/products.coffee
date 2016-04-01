---
---
document.addEventListener "DOMContentLoaded", (event) ->
  x = new XMLHttpRequest()
  x.open("GET", "https://api.github.com/repos/phonegap/phonegap-app-desktop/releases/latest", true)
  desktopAppVersion = document.getElementById('desktop_app_version')

  x.onreadystatechange = () ->
    if (x.readyState == 4 && x.status == 200)
      responseObj = JSON.parse(x.responseText)
      desktopAppVersion.innerHTML = "Version #{responseObj.tag_name} (Beta)"

  x.send(null)
