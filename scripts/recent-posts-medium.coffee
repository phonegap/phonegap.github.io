---
---
document.addEventListener "DOMContentLoaded", (event) ->
  blogListElement = document.getElementById('latest-blog')
  x = new XMLHttpRequest()
  x.open("GET", "https://blog.phonegap.com/feed", true)

  posts = []
  months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

  createSuperElement = (elemType, attributes, innerHTML) ->
    elem = document.createElement(elemType)
    for key, value of attributes
      elem.setAttribute(key, value)
    if(innerHTML)
      elem.innerHTML = innerHTML
    return elem


  createBlogElement = (post) ->
    liElement = createSuperElement('li', {'class': 'latest-blog__post'})
    timeElement = createSuperElement('time', {'class': 'latest-blog__date', 'datetime': post.datetimeString})
    monthElement = createSuperElement('span', {'class': 'latest-blog__month'}, months[post.datetimeObj.getMonth()])
    dayString = if post.datetimeObj.getDate() < 10 then "0#{post.datetimeObj.getDate()}" else "#{post.datetimeObj.getDate()}"
    dayElement = createSuperElement('span', {'class': 'latest-blog__day'}, dayString)
    yearElement = createSuperElement('span', {'class': 'latest-blog__year'}, post.datetimeObj.getFullYear())
    divElement = createSuperElement('div', {})
    blogTitleElement = createSuperElement('h3', {'class': 'latest-blog__title'})
    blogLinkElement = createSuperElement('a', {'href': post.url}, post.title)
    description = createSuperElement('p', {'class': 'latest-blog__description'}, post.description+" ")
    readMoreLink = createSuperElement('a', {'href': post.url, 'class': 'latest-blog__read-more'}, 'READ MORE')
    description.appendChild(readMoreLink)
    blogTitleElement.appendChild(blogLinkElement)
    divElement.appendChild(blogTitleElement)
    divElement.appendChild(description)
    timeElement.appendChild(monthElement)
    timeElement.appendChild(dayElement)
    timeElement.appendChild(yearElement)
    liElement.appendChild(timeElement)
    liElement.appendChild(divElement)
    return liElement

  writeData = (posts) ->
    ulElement = document.createElement('ul')
    for post in posts
      ulElement.appendChild createBlogElement post
    titleElement = document.createElement 'h3'
    titleElement.setAttribute('class', 'latest-blog__section-title')
    titleElement.innerHTML = 'The latest from our blog'
    blogListElement.appendChild titleElement
    blogListElement.appendChild ulElement

  parseData = (xmlChildNodes) ->
    console.log(xmlChildNodes)
    # for post in xmlChildNodes
    #   post =
    #     datetimeString: post.childNodes[0].innerHTML
    #     datetimeObj: new Date(post.childNodes[0].innerHTML)
    #     title: post.childNodes[1].innerHTML
    #     url: post.childNodes[2].innerHTML
    #     description: post.childNodes[3].innerHTML
    #   posts.push(post)
    # writeData posts

  x.onreadystatechange = () ->
    if (x.readyState == 4 && x.status == 200)
      parseData x.responseXML.documentElement.childNodes

  x.send(null)
