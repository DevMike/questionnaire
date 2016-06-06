Give me the name and age of all employees:

SELECT name, age FROM users;

Give me the name and organization of all employees:

SELECT users.name, organizations.name FROM users
JOIN organizations ON users.org_id = organizations.id

Give me the oldest person at each organization:

SELECT organizations.name, MAX(users.age) FROM users
JOIN organizations ON users.org_id = organizations.id
GROUP BY organizations.id;

Find the first person who joined each company:

SELECT users.name, organizations.name from users
JOIN organizations ON users.org_id = organizations.id
GROUP BY organizations.id, users.id
ORDER BY meta->'joined' ASC
LIMIT 1;

Give me the name and comment of all employees:

SELECT users.name, meta->'comment' from users
