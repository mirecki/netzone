(function() {
  $(document).on('turbolinks:load', function() {
    var films;
    films = new Bloodhound({
      datumTokenizer: Bloodhound.tokenizers.whitespace,
      queryTokenizer: Bloodhound.tokenizers.whitespace,
      remote: {
        wildcard: '%QUERY',
        url: '/search?query=%QUERY'
      }
    });
    films.initialize();
    $('#typeahead').typeahead({
      highlight: true
    }, {
      name: 'films',
      display: 'title',
      limit: 10,
      source: films
    });
    $('#typeahead').bind('typeahead:select', function(ev, suggestion) {
      window.location = '/film/' + encodeURIComponent(suggestion.id);
    });
  });

}).call(this);
