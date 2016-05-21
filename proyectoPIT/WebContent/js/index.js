var working = false;
$('.login').on('submit', function(e) {
  e.preventDefault();
  if (working) return;
  working = true;
  var $this = $(this),
    $state = $this.find('button > .state');
  $this.addClass('loading');
  $state.html('Autoidentificando');
  setTimeout(function() {
    $this.addClass('ok');
    $state.html('Bienvenido!');
    setTimeout(function() {
      
    }, 4000);
  }, 3000);
});