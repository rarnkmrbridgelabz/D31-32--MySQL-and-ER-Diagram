create database Address_Book;
show databases;
use Address_Book;

create table address_book (first_name varchar(50) NOT NULL, last_name varchar(50) NOT NULL, address varchar(200) NOT NULL,
 city varchar(50) NOT NULL, state varchar(50) NOT NULL,zip int NOT NULL, phone_number varchar(10) NOT NULL, email_id varchar(20) NOT NULL,primary key (phone_number));
desc address_book;

insert into address_book (first_name, last_name, address, city, state, zip, phone_number, email_id ) values 
('Kamal', 'Kanna', 'Velacherry', 'Chennai','Tamilnadu', 600041, 9988776655,'hemnath@gmail.com'),
('Raj', 'Kumar', 'AnnaNagar', 'Chennai','Tamilnadu', 600414, 9988546214, 'rajkumar@gmail.com');

select * from address_book;

update address_book set address = 'MountRoad' where first_name = 'Raj';
select * from address_book;

delete from address_book where first_name = 'Raj';
select * from address_book;

insert into address_book (first_name, last_name, address, city, state, zip, phone_number, email_id) values
('ajith', 'kumar', 'KKNagar', 'Chennai  ','Tamilnadu', 600023,9696969696, 'ajay@gmail.com'), ('vijay', 'j', 'AnnaNagar', 'Chennai','Tamilnadu', 600048,7859652321, 'vijay@gmail.com'),
('siva', 'somu', 'Velacherry', 'Chennai','Tamilnadu',600001 ,9876543214 , 'somu@gmail.com'), ('suriya ', 'kumar', 'MountRoad ', 'Chennai','Tamilnadu',563256,8795462130, 'sk@gmail.com');
select * from address_book;

select * from address_book where state = 'Tamilnadu';

update address_book set city = 'Chennai' where first_name = 'siva';
update address_book set last_name = 'george' where first_name = 'vijay';
update address_book set state = 'Kerala' where first_name = 'siva';
update address_book set city = 'Cochin' where first_name = 'siva';

select state, count(state) from address_book where state = 'Tamilnadu' group by state;
select state, count(state) from address_book where state = 'kerala' group by state;
select state, count(city) from address_book where city = 'Bangalore' group by state;

select first_name, last_name from address_book order by first_name, last_name asc;

alter table address_book add Name varchar(20) after email_id;
alter table address_book add Type varchar(20) after Name;
update address_book set Name ='Rao', type ='Family' where first_name = 'siva';
update address_book set Name ='Joseph', type ='Friend' where first_name = 'vijay';
update address_book set Name ='James', type ='Artist' where zip = '563256';
update address_book set Name ='Hasan', type ='Friend' where first_name = 'Kamal';

select * from address_book;

select Type, count(type) from address_book where phone_number group by Type;

insert into address_book (first_name, last_name, address, city, state, zip, phone_number, email_id,Name,type) value ('Rohini', 'shree', 'IndiraNagar', 'Banglore','Karnataka', 547896, 8844226699, 'rohin@gmail.com','Engineer','Profession'),
('Preethi', 'Rai', 'Cochin', 'Cochin','Kerala', 485694, 7654214896, 'preethi@gmail.com','book','Family');
select * from address_book;