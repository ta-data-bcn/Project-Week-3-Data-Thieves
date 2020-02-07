SELECT species, AVG(height) as avg_height, AVG(mass) as avg_mass, homeworld
FROM characters
GROUP BY species, homeworld
ORDER BY AVG(height) DESC
;

-- Which eye colours are the most common on which planet
SELECT eye_color as color, COUNT(eye_color) as count_c, homeworld
FROM characters
GROUP BY color, homeworld
ORDER BY count_c DESC
;

SELECT cw.name, cw.Total, s.homeworld, s.name as specie
FROM
    character_words cw
    LEFT JOIN characters ch ON 
        (UPPER(ch.name) like CONCAT('%',UPPER(cw.name),'%') 
         OR UPPER(cw.name) like CONCAT('%',UPPER(ch.name),'%'))
    LEFT JOIN species s ON ch.species = s.name
;

SELECT *
FROM character_words
;