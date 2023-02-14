create database nutricionista;
use nutricionista;


create table User(
id bigint not null auto_increment,
user_name varchar (150),
user_age  int not null,
user_dob datetime not null default now(),
user_height double not null,
user_weight int not null,
primary key (id)

);

create table Dayus(
id_day int not null auto_increment, day date not null,
user_name varchar (150) not null,
user_id  bigint not null,
primary key (id_day),
foreign key (user_id) references User(id)
);

create table meals(
meal_num int not null auto_increment,
calories int not null,
fal int not null,
carbohydrates int not null,
fibre int not null,
protain int not null,
Day_idDay int not null, day date not null,
primary key (meal_num),
foreign key (Day_idDay) references Dayus (id_day)
);

show tables;

describe User;
describe Dayus;
describe meals;

insert into User
(user_name, user_age, user_height, user_weight)
values
('Kauan', '18', '1.78', '80'),
('Paulo', '54', '1.65', '100'),
('Silvia', '48', '1.65', '60'),
('Gabriel', '18', '1.82', '115'),
('Nicolas', '16', '1.60', '50');

insert into User (user_name, user_age, user_height, user_weight) values ('Kauan Estoque Pereira', '18', '1.78', '80');

select * from User;


insert into Dayus
(day, user_name, user_id)
values
('2026-02-23','Kauan',1),
('2026-02-23','Paulo',4),
('2026-02-23','Silvia',7),
('2026-02-23','Gabriel',11),
('2026-02-23','Nicolas',16);

select * from Dayus;

insert into meals
(calories, fal, carbohydrates, fibre, protain, Day_idDay)
values
(158,7,177,100,3,1);

insert into meals (calories, fal, carbohydrates, fibre, protain, Day_idDay) values (158,7,177,100,3,2);

insert into meals (calories, fal, carbohydrates, fibre, protain, Day_idDay) values (650,24,300,245,4,3);

select * from meals;


