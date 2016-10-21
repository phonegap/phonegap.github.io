---
---
document.addEventListener "DOMContentLoaded", (event) ->
  x = new XMLHttpRequest()
  x.open("GET", "https://api.github.com/repos/phonegap/phonegap-app-desktop/releases/latest", true)
  desktopAppVersion = document.getElementById('desktop_app_version')
  downloadPlatformList = document.getElementById('download__platform__list')

  createSuperElement = (elemType, attributes, innerHTML) ->
    elem = document.createElement(elemType)
    for key, value of attributes
      elem.setAttribute(key, value)
    if(innerHTML)
      elem.innerHTML = innerHTML
    return elem

  x.onreadystatechange = () ->
    if (x.readyState == 4 && x.status == 200)
      responseObj = JSON.parse(x.responseText)
      downloadPlatformList.innerHTML = '';
      for asset in responseObj.assets
        nameArray = asset.name.split('.')
        nameArray[nameArray.length - 1]
        switch nameArray[nameArray.length - 1]
          when 'dmg'
            macAsset = asset
            liAsset = document.createElement('li')
            downloadPlatform = createSuperElement('div', {'class':'download__platform'})
            liAsset.appendChild(downloadPlatform)
            downloadLink = createSuperElement('a', {'href': asset.browser_download_url}, 'Mac')
            downloadPlatform.appendChild(downloadLink)
            downloadPlatformVersion = createSuperElement('div', {'class':'download__platform__version'}, 'macOS 10.9 or later')
            liAsset.appendChild(downloadPlatformVersion)
            downloadPlatformList.appendChild(liAsset)
          when 'exe'
            winAsset = asset
            liAsset = document.createElement('li')
            downloadPlatform = createSuperElement('div', {'class':'download__platform'})
            liAsset.appendChild(downloadPlatform)
            downloadLink = createSuperElement('a', {'href': asset.browser_download_url}, 'Windows')
            downloadPlatform.appendChild(downloadLink)
            downloadPlatformVersion = createSuperElement('div', {'class':'download__platform__version'}, 'Windows 8.1')
            liAsset.appendChild(downloadPlatformVersion)
            downloadPlatformList.appendChild(liAsset)

      desktopAppVersion.innerHTML = "Version #{responseObj.tag_name} (Beta)"

  x.send(null)
