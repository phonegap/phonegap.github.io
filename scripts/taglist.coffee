---
---
document.addEventListener "DOMContentLoaded", (event) ->
  tagListElement = document.getElementById('top-tag-list')
  x = new XMLHttpRequest()
  x.open("GET", "/blog/tags.xml", true)

  tags = []

  sortBy = (a, b) ->
    return -1 if a.count > b.count
    return +1 if a.count < b.count
    return 0

  createTagElement = (tag) ->
    liElement = document.createElement('li')
    spanElement = document.createElement('span')
    spanElement.style.width = "#{tag.percentage * 200}px"
    spanElement.style.backgroundColor = "rgba(44, 161, 197, #{0.8 * tag.percentage + 0.2})"
    linkElement = document.createElement('a')
    linkElement.href = tag.url
    linkElement.innerHTML = tag.title
    liElement.appendChild(spanElement)
    liElement.appendChild(linkElement)
    return liElement

  writeData = (tags) ->
    ulElement = document.createElement('ul')
    for tag in tags
      ulElement.appendChild createTagElement tag
    tagListElement.appendChild ulElement

  parseData = (xmlChildNodes) ->
    for tag in xmlChildNodes
      tag =
        title: tag.childNodes[0].innerHTML
        count: parseInt(tag.childNodes[1].innerHTML)
        url: tag.childNodes[2].innerHTML
      tags.push tag
    tags.sort(sortBy).splice(5)
    for tag in tags
      tag.percentage = tag.count/tags[0].count
    writeData tags

  x.onreadystatechange = () ->
    if (x.readyState == 4 && x.status == 200)
      parseData x.responseXML.documentElement.childNodes

  x.send(null)
