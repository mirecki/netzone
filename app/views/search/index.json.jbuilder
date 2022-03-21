# frozen_string_literal: true

json.array! @film do |film|
  json.title  film.title
  json.id     film.id
end
