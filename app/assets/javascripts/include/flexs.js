(function() {
  $(document).on('turbolinks:load', function() {
    Pagy.init();
  });

  $(document).on('turbolinks:load', function() {
    $('.flexslider').flexslider({
      animation: 'slide',
      controlNav: 'thumbnails'
    });
  });

}).call(this);
