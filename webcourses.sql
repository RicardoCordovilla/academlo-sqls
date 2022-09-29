--table roles 
insert into roles (
	id, role_name 
)
values(
	'role-id__student',
	'STUDENT'
),
(
	'role-id__teacher',
	'TEACHER'
),
(
	'role-id__admin',
	'ADMIN'
);

--table categories 
insert into categories (
	id, "name" 
)
values(
	'cat_id-CATHTML',
	'HTML'
),
(
	'cat_id-CATCSS',
	'CSS'	
),
(
	'cat_id-CATJS',
	'JAVASCRIPT'
);


--table users
insert into users (
	id, "name" , email , "password" ,age ,role_id 
)
values(
	'jwekH73amknJUricardo',
	'Ricardo',
	'ricardo@academlo.com',
	'ricardo1234',
	28,
	'role-id__admin'
),
(
	'jwekH73amknJUalberto',
	'Alberto',
	'alberto@academlo.com',
	'alberto4321',
	22,
	'role-id__teacher'
),
(
	'jwekH73amknJUwilly',
	'Willy',
	'willy@academlo.com',
	'willy4321',
	25,
	'role-id__student'
),
(
	'jwekH73amknJUandres',
	'Andres',
	'andres@academlo.com',
	'andres1234',
	27,
	'role-id__student'
),
(
	'jwekH73amknJUjose',
	'Jose',
	'jose@academlo.com',
	'jose4321',
	24,
	'role-id__student'
),
(
	'jwekH73amknJUroberto',
	'Roberto',
	'roberto@academlo.com',
	'roberto5555',
	23,
	'role-id__student'
);

--table course videos
insert  into couse_videos (
	id, title , url, categorie_id 
)
values(
	'html-01__id-html-VID01',
	'Introduction',
	'https://academlo.com/videos/html-VID01',
	'cat_id-CATHTML'
),
(
	'html-02__id-html-VID02',
	'Htlm tags',
	'https://academlo.com/videos/html-VID02',
	'cat_id-CATHTML'
),
--css
(
	'css-01__id-css-VID01',
	'Styles in css',
	'https://academlo.com/videos/css-VID01',
	'cat_id-CATCSS'
),
(
	'css-02__id-css-VID02',
	'Grid and flex',
	'https://academlo.com/videos/css-VID02',
	'cat_id-CATCSS'
),
--js
(
	'js-01__id-js-VID01',
	'Operators',
	'https://academlo.com/videos/js-VID01',
	'cat_id-CATJS'
),
(
	'js-02__id-js-VID02',
	'Array methods',
	'https://academlo.com/videos/js-VID02',
	'cat_id-CATJS'
);

--courses

insert into courses (
	id, title, description,level, couse_videos_id 
)
values(
	'html-01__id-html-CRS01',
	'Introduction',
	'Basic conceptts about html sctructure and use',
	'Beginers',
	'html-01__id-html-VID01'
),
(
	'html-02__id-html-CRS02',
	'Htlm tags',
	'Implementation of tags in a html document',
	'Beginers',
	'html-02__id-html-VID02'
),
(
	'css-01__id-css-CRS01',
	'Styles in css',
	'Change the style of html by classes',
	'Mid level',
	'css-01__id-css-VID01'
),
(
	'css-02__id-css-CRS02',
	'Grid and flexbox ',
	'Aplying grid and flexbox to structure html tags',
	'Mid level',
	'css-02__id-css-VID02'
),
(
	'js-01__id-js-CRS01',
	'Oparators',
	'Javascript variables and operators',
	'Advance',
	'js-01__id-js-VID01'
),
(
	'js-02__id-js-CRS02',
	'Array methods',
	'Manipulating the real dom to render by js using arrays methods',
	'Advance',
	'js-02__id-js-VID02'
);

insert into users_courses
values(
	'0001',
	'jwekH73amknJUricardo',
	'html-01__id-html-CRS01',
	0	
);

insert into users_courses
values(
	'0002',
	'jwekH73amknJUalberto',
	'html-02__id-html-CRS02',
	10	
);


SELECT
	users."name",
	users.age,
	courses.title AS courses,
	couse_videos.title AS videos,
	users_courses.is_complete 
FROM
	users_courses
	INNER JOIN users ON users_courses.id_user = users."id"
	INNER JOIN courses ON users_courses.id_course = courses."id"
	INNER JOIN couse_videos ON courses.couse_videos_id = couse_videos."id";

	