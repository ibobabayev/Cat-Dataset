select * from cats_dataset$;

--Overall count of cats
select Count(*) from cats_dataset$;

--Overall count of unique breeds
select Distinct Breed from cats_dataset$;

--Overall count of cats by breed
select Breed,Count(*) as count from cats_dataset$ group by Breed order by count desc;

--Breeds with the most population
select Breed,Count(*) as count from cats_dataset$ group by Breed having Count(*)>35

--Overall count of cats by breed and color
select Breed,Color,Count(*) as count from cats_dataset$ group by Breed,Color order by count desc;

--Overall count of cats by breed and gender
select Breed,Gender,Count(*) as count from cats_dataset$ group by Breed,Gender order by count desc;

--Average age and weight of cats
select AVG([Age (Years)]) as Average_Age,AVG([Weight (kg)]) as Average_Weight from cats_dataset$;

--Average age and weight of cats by breed
select Breed,AVG([Age (Years)]) as Average_Age,AVG([Weight (kg)]) as Average_Weight from cats_dataset$ group by Breed;

--Oldest cats
select * from cats_dataset$ order by 'Age (Years)' desc;
select Max([Age (Years)]) as Oldest_Cat_Age from cats_dataset$;

--Number of old cats
select Count(*) from cats_dataset$ where [Age (Years)]>=15;

--Youngest cats
select * from cats_dataset$ order by 'Age (Years)';
select Min([Age (Years)]) as Youngest_Cat_Age from cats_dataset$;


--Heaviest cats
select * from cats_dataset$ order by 'Weight (kg)' desc;
select Max([Weight (kg)]) as Lightest_Cat_Age from cats_dataset$;


--Lightest cats
select * from cats_dataset$ order by 'Weight (kg)';
select Min([Weight (kg)]) as Lightest_Cat_Age from cats_dataset$;

--Adult and healthy cats
select * from cats_dataset$ where ([Age (Years)] between 1 and 7) and  3<[Weight (kg)] and [Weight (kg)]<6; 

--Cats with unusual appearance 
select * from cats_dataset$ where Color in
('Tabby','Bicolor','Pointed','Tortoiseshell','Calico','Tricolor','Sable')

--Cats life stage
Select *, case when [Age (Years)]<3 then 'Junior' when [Age (Years)] between 3 and 6 then 'Adult'
when [Age (Years)] between 7 and 10 then 'Mature' when [Age (Years)] between 11 and 14 then 'Senior'
when [Age (Years)]>14 then 'Old' end as 'Life Stage' from cats_dataset$  

--Cat without any breed
SELECT Coalesce(Breed,'Moggy') as Breed from cats_dataset$

