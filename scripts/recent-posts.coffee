---
---
document.addEventListener "DOMContentLoaded", (event) ->
  blogListElement = document.getElementById('latest-blog')
  x = new XMLHttpRequest()
  x.open("GET", "https://push.superfeedr.com/?hub.mode=retrieve&hub.topic=https%3A%2F%2Fblog.phonegap.com%2Ffeed&count=2&format=json&authorization=Z2FydGhkYjo0NGFkY2FjMzY5ZDg2NDY5ODhiMDBhY2ZkZDkyZmVkMg%3D%3D&", true)

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

  parseData = (items) ->
    for post in items
      div = document.createElement("div")
      div.innerHTML = post.content
      postContent = div.textContent || div.innerText || ""
      post =
        datetimeString: post.updated
        datetimeObj: new Date(post.updated*1000)
        title: post.title
        url: post.permalinkUrl
        description: postContent.split(" ").splice(0,20).join(" ")
      posts.push(post)
    writeData posts

  x.onreadystatechange = () ->
    if (x.readyState == 4 && x.status == 200)
      jsondata = JSON.parse(x.responseText)
      parseData(jsondata.items)
      # parseData x.responseXML.documentElement.childNodes

  x.send(null)
