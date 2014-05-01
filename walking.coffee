walkRight = true
left = 400
right = 700
x = left
move = ->
  img = document.getElementsByTagName("img")[0]
  x += 5 if walkRight
  x -= 5 if not walkRight
  img.style.left = x + "px"
  if x > right or x < left
    img.classList.toggle "flip-img"
  walkRight = true if x < left
  walkRight = false if x > right


setInterval move, 100

