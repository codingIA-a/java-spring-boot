create table school(
id  int primary key not null,
nombre varchar(45) not null,
created_at date not null,
updated_at date  default (current_date)
);

create table student(
id int primary key ,
first_name varchar(45),
last_name varchar(45),
age int,
created_at date,
updated_at date default (current_date),
fk_school_id int,
foreign key (fk_school_id) references school(id)
);


/*
crear 3 escuelas
*/

insert into school (id, nombre, created_at) values 
(1, 'Blue school', '2024-05-22'),
(2, 'Red school', '2024-05-22'),
(3, 'Green school', '2024-05-22')
;
select * from school;

/*
crear 2 estudiantes por school
*/
insert into student (id, first_name, last_name, age, created_at, fk_school_id) values
(1, 'estudiante1', 'apellido1', 23, '2024-05-22', 1),
(2, 'estudiante2', 'apellido2', 27, '2024-05-22', 2),
(3, 'estudiante3', 'apellido3', 30, '2024-05-22', 3)
;




/*
Consulta todos los estudiantes
*/
select * from student;

/*
Consulta todos los estudiantes y muestra su nombre y apellido
*/
select 
first_name as 'nombre',
last_name as 'apellido'
from student;
/*
consulta los estudiantes de la primera escuela
*/

select 
*
from student
where fk_school_id = 1;

/*
Actualizar los nombres de las escuelas
*/
update school set nombre = 'Primera escuela' where id = 1;
update school set nombre = 'Segunda escuela' where id = 2;
select * from school;



