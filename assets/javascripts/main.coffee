Router.addRoute('/result/:id', (id)->
)

Router.collection(".main", "birthdays");
Router.collection(".main", "books");
Router.collection(".main", "names");
Router.collection(".main", "daniels");
Router.collection(".main", "movies");
Router.addRoute('/', ->
  View.render(".main", "birthdays", "collections/birthdays");
)

$.capsuleForm(".names");
$.capsuleForm(".books");
$.capsuleForm(".daniels");
$.capsuleForm(".movies");

App.initialize()