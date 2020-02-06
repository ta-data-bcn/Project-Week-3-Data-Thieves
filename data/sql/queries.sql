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
