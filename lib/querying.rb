def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year from books
WHERE series_id = 1
ORDER BY books.year
"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
FROM characters
ORDER BY motto
LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(characters.species)
FROM characters
GROUP BY characters.species
ORDER BY COUNT(characters.species) DESC LIMIT 1
"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
FROM authors
JOIN series ON authors.id = series.author_id
JOIN subgenres ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
"SELECT series.title
FROM series
JOIN characters ON characters.series_id = series.id
WHERE characters.species = 'human'
GROUP BY series.title LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(book_id) as total_books
FROM characters
JOIN character_books ON character_books.character_id = characters.id
GROUP BY characters.name
ORDER BY total_books DESC "
end
