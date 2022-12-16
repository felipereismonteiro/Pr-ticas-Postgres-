SELECT users.name, COUNT(*) FROM testimonials
JOIN users
ON testimonials."writerId" = users.id
WHERE "writerId" = 435
GROUP by users.id;