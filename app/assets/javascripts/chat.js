$(function() {
  var $el = $("#firechat-wrapper")
  var chatRef = new Firebase('https://flickering-fire-2923.firebaseio.com/chat')
  chatRef.auth($el.data('auth-token'))
  var chat = new FirechatUI(chatRef, $el)
  chat.setUser('1', 'Andrew Warner')
})
