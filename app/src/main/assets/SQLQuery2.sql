create table BoycottProducts(
	id int primary key,
	name nvarchar(50)  ,
	images varbinary(max))

select * from BoycottProducts 

insert into BoycottProducts values (
	1, 'شيبسى', (select * from openrowset(bulk N'D:\مقاطعه\ش.webp', single_blob) as images))
insert into BoycottProducts values (
	2, 'بيبسي', (select * from openrowset(bulk N'D:\مقاطعه\بي.webp', single_blob) as images))
insert into BoycottProducts values (
	3, 'اريال', (select * from openrowset(bulk N'D:\مقاطعه\اري.jpg', single_blob) as images))
insert into BoycottProducts values (
	4, 'ريكسونا', (select * from openrowset(bulk N'D:\مقاطعه\ري.webp', single_blob) as images))
insert into BoycottProducts values (
	5, 'ماجي', (select * from openrowset(bulk N'D:\مقاطعه\ما.png', single_blob) as images))
insert into BoycottProducts values (
	6, 'كرانشي', (select * from openrowset(bulk N'D:\مقاطعه\ك.jpg', single_blob) as images))
insert into BoycottProducts values (
	7, 'دوريتوس', (select * from openrowset(bulk N'D:\مقاطعه\دو.jpg', single_blob) as images))
insert into BoycottProducts values (
	8, 'شيتوس', (select * from openrowset(bulk N'D:\مقاطعه\شي.jpg', single_blob) as images))
insert into BoycottProducts values (
	9, 'سفن آب', (select * from openrowset(bulk N'D:\مقاطعه\سفن.jpg', single_blob) as images))
insert into BoycottProducts values (
	10, 'سبرايت', (select * from openrowset(bulk N'D:\مقاطعه\سبر.webp', single_blob) as images))
insert into BoycottProducts values (
	11, 'كوكاكولا', (select * from openrowset(bulk N'D:\مقاطعه\كولا.webp', single_blob) as images))
insert into BoycottProducts values (
	12, 'برينجلز', (select * from openrowset(bulk N'D:\مقاطعه\بري.jpg', single_blob) as images))
insert into BoycottProducts values (
	13, 'بيك ستيكس', (select * from openrowset(bulk N'D:\مقاطعه\بيك.jpg', single_blob) as images))
insert into BoycottProducts values (
	14, 'أوريو', (select * from openrowset(bulk N'D:\مقاطعه\اوريو.jpg', single_blob) as images))
insert into BoycottProducts values (
	15, 'نستله', (select * from openrowset(bulk N'D:\مقاطعه\نستله.webp', single_blob) as images))
insert into BoycottProducts values (
	16, 'شكولاتة ديري ميلك', (select * from openrowset(bulk N'D:\مقاطعه\ديرى.jpg', single_blob) as images))
insert into BoycottProducts values (
	17, 'شكولاتة بابلي', (select * from openrowset(bulk N'D:\مقاطعه\بابلى.jpg', single_blob) as images))
insert into BoycottProducts values (
	18, 'شكولاتة فلاك ', (select * from openrowset(bulk N'D:\مقاطعه\فلاك.webp', single_blob) as images))
insert into BoycottProducts values (
	19, 'شوكولاتة مارس', (select * from openrowset(bulk N'D:\مقاطعه\مارس.jpg', single_blob) as images))
insert into BoycottProducts values (
	20, 'شوكولاتة باونتي', (select * from openrowset(bulk N'D:\مقاطعه\باونتى.jpg', single_blob) as images))
insert into BoycottProducts values (
	21, 'شكولاتة جيرسي', (select * from openrowset(bulk N'D:\مقاطعه\جيرسى.webp', single_blob) as images))
insert into BoycottProducts values (
	22, 'فلوتس', (select * from openrowset(bulk N'D:\مقاطعه\فلوتس.jpg', single_blob) as images))
insert into BoycottProducts values (
	23, 'سنيكرز', (select * from openrowset(bulk N'D:\مقاطعه\سنيكرز.webp', single_blob) as images))
insert into BoycottProducts values (
	24, 'بامبرز', (select * from openrowset(bulk N'D:\مقاطعه\بامبرز.jpg', single_blob) as images))
insert into BoycottProducts values (
	25, 'صابون لوكس', (select * from openrowset(bulk N'D:\مقاطعه\لوكس.jpeg', single_blob) as images))
insert into BoycottProducts values (
	26, 'سيجنال', (select * from openrowset(bulk N'D:\مقاطعه\سيجنال.jpg', single_blob) as images))
insert into BoycottProducts values (
	27, 'كيلوجز نودلز', (select * from openrowset(bulk N'D:\مقاطعه\نودلز.jpg', single_blob) as images))
insert into BoycottProducts values (
	28, 'ميرندا', (select * from openrowset(bulk N'D:\مقاطعه\ميرندا.webp', single_blob) as images))
insert into BoycottProducts values (
	29, 'دانون', (select * from openrowset(bulk N'D:\مقاطعه\دانون.png', single_blob) as images))
insert into BoycottProducts values (
	30, 'دانيت ودانجو واكتيفيا', (select * from openrowset(bulk N'D:\مقاطعه\تلاته.jpg', single_blob) as images))
insert into BoycottProducts values (
	31, 'شكولاتة كيت كات', (select * from openrowset(bulk N'D:\مقاطعه\كيتكات.webp', single_blob) as images))
insert into BoycottProducts values (
	32, 'شكولاتة جالاكسي', (select * from openrowset(bulk N'D:\مقاطعه\جالاكسى.jpg', single_blob) as images))
insert into BoycottProducts values (
	33, 'شوكولاتة مورو', (select * from openrowset(bulk N'D:\مقاطعه\مورو.jpg', single_blob) as images))
insert into BoycottProducts values (
	34, 'فانتا', (select * from openrowset(bulk N'D:\مقاطعه\فانتا.webp', single_blob) as images))
insert into BoycottProducts values (
	35, 'هولز ', (select * from openrowset(bulk N'D:\مقاطعه\هولز.jpg', single_blob) as images))
insert into BoycottProducts values (
	36, 'بسكويت توك المملح', (select * from openrowset(bulk N'D:\مقاطعه\توك.jpg', single_blob) as images))
insert into BoycottProducts values (
	37, 'كلير', (select * from openrowset(bulk N'D:\مقاطعه\كلير.jpg', single_blob) as images))
insert into BoycottProducts values (
	38, ' لايف بوي', (select * from openrowset(bulk N'D:\مقاطعه\لايفبوى.jpg', single_blob) as images))
insert into BoycottProducts values (
	39, 'آكس', (select * from openrowset(bulk N'D:\مقاطعه\اكس.webp', single_blob) as images))
insert into BoycottProducts values (
	40, 'لبان ترايدنت', (select * from openrowset(bulk N'D:\مقاطعه\ترايدنت.jpg', single_blob) as images))
insert into BoycottProducts values (
	41, 'لبان كلورتس', (select * from openrowset(bulk N'D:\مقاطعه\كلورتس.webp', single_blob) as images))
insert into BoycottProducts values (
	42, 'هيد اند شالدورز', (select * from openrowset(bulk N'D:\مقاطعه\هيداندشولدرز.jpg', single_blob) as images))
insert into BoycottProducts values (
	43, 'عصير تانج', (select * from openrowset(bulk N'D:\مقاطعه\تانج.jpg', single_blob) as images))
insert into BoycottProducts values (
	44, 'نسكافيه', (select * from openrowset(bulk N'D:\مقاطعه\نسكافيه.jpg', single_blob) as images))
insert into BoycottProducts values (
	45, 'شاي ليبتون', (select * from openrowset(bulk N'D:\مقاطعه\ليبتون.png', single_blob) as images))
insert into BoycottProducts values (
	46, 'داوني', (select * from openrowset(bulk N'D:\مقاطعه\داونى.jpg', single_blob) as images))
insert into BoycottProducts values (
	47, 'بيرسيل', (select * from openrowset(bulk N'D:\مقاطعه\بيرسيل.webp', single_blob) as images))
insert into BoycottProducts values (
	48, 'تايد', (select * from openrowset(bulk N'D:\مقاطعه\تايد.png', single_blob) as images))
insert into BoycottProducts values (
	49, 'جونسون', (select * from openrowset(bulk N'D:\مقاطعه\جونسون.webp', single_blob) as images))
insert into BoycottProducts values (
	75, 'مياه داساني', (select * from openrowset(bulk N'D:\مقاطعه\داسانى.jpg', single_blob) as images),'مياه',0)
insert into BoycottProducts values (
	76, 'مياه ايفيان', (select * from openrowset(bulk N'D:\مقاطعه\ايفيان.jpg', single_blob) as images),'مياه',0)
insert into BoycottProducts values (
	77, 'مياه اكوافينا', (select * from openrowset(bulk N'D:\مقاطعه\اكوافينا.jpg', single_blob) as images),'مياه',0)
insert into BoycottProducts values (
	78, 'مياه بركه', (select * from openrowset(bulk N'D:\مقاطعه\بركه.jpg', single_blob) as images),'مياه',0)
insert into BoycottProducts values (
	81, 'لبان تشكلتس', (select * from openrowset(bulk N'D:\مقاطعه\تشكلتس.jpg', single_blob) as images),'لبان',0)
insert into BoycottProducts values (
	89, 'بريل', (select * from openrowset(bulk N'D:\مقاطعه\سائل.jpg', single_blob) as images),'منظفات,سائل',0)
insert into BoycottProducts values (
	90, 'فيرى', (select * from openrowset(bulk N'D:\مقاطعه\فيرى.jpg', single_blob) as images),'منظفات,سائل',0)
insert into BoycottProducts values (
	91, 'جنرال', (select * from openrowset(bulk N'D:\مقاطعه\جنرال.jpg', single_blob) as images),'منظفات',0)
insert into BoycottProducts values (
	92, 'كومفورت', (select * from openrowset(bulk N'D:\مقاطعه\كومفورت.jpg', single_blob) as images),'منظفات',0)
insert into BoycottProducts values (
	93, 'كلوروكس', (select * from openrowset(bulk N'D:\مقاطعه\كلوروكس.webp', single_blob) as images),'منظفات',0)
insert into BoycottProducts values (
	94, 'فانش', (select * from openrowset(bulk N'D:\مقاطعه\فانش.jpg', single_blob) as images),'منظفات,مسحوق',0)
insert into BoycottProducts values (
	95, 'ديتول', (select * from openrowset(bulk N'D:\مقاطعه\ديتول.webp', single_blob) as images),'منظفات',0)
insert into BoycottProducts values (
	99, 'بريزيدن', (select * from openrowset(bulk N'D:\مقاطعه\بريزيدن.webp', single_blob) as images),'جبن',0)
insert into BoycottProducts values (
	100, 'كيرى', (select * from openrowset(bulk N'D:\مقاطعه\كيرى.jpg', single_blob) as images),'جبن',0)
insert into BoycottProducts values (
	50, 'بيج شيبسى', (select * from openrowset(bulk N'D:\مقاطعه\بيجشيبسى.jpg', single_blob) as images),'شيبسيات','true')
insert into BoycottProducts values (
	51, 'سبيرو سباتس', (select * from openrowset(bulk N'D:\مقاطعه\سبيرو.webp', single_blob) as images),'مياه غازيه','true')
insert into BoycottProducts values (
	52, 'منتجات دريم', (select * from openrowset(bulk N'D:\مقاطعه\دريم.jpeg', single_blob) as images),'أخرى','true')
insert into BoycottProducts values (
	53, 'منتجات ماي واي', (select * from openrowset(bulk N'D:\مقاطعه\مايواى.jpg', single_blob) as images),'أخرى','true')
insert into BoycottProducts values (
	54, 'منتجات جهينة', (select * from openrowset(bulk N'D:\مقاطعه\جهينه.png', single_blob) as images),'أخرى','true')
insert into BoycottProducts values (
	55, 'منتجات شركة أرما', (select * from openrowset(bulk N'D:\مقاطعه\ارما.jpg', single_blob) as images),'أخرى','true')
insert into BoycottProducts values (
	56, 'مصر كافيه بديل نسكافيه', (select * from openrowset(bulk N'D:\مقاطعه\كافيه.jpg', single_blob) as images),'مشروبات','true')
insert into BoycottProducts values (
	57, 'فوكس شيبس', (select * from openrowset(bulk N'D:\مقاطعه\فوكس.jpg', single_blob) as images),'شيبسيات','true')
insert into BoycottProducts values (
	58, 'جبن وعصائر دومتي', (select * from openrowset(bulk N'D:\مقاطعه\دومتى.png', single_blob) as images),'أخرى','true')
insert into BoycottProducts values (
	59, 'لبن وعصير لمار', (select * from openrowset(bulk N'D:\مقاطعه\لمار.jpg', single_blob) as images),'أخرى','true')
insert into BoycottProducts values (
	60, 'منتجات مزارع دينا', (select * from openrowset(bulk N'D:\مقاطعه\دينا.webp', single_blob) as images),'أخرى','true')
insert into BoycottProducts values (
	61, 'عصائر قها ', (select * from openrowset(bulk N'D:\مقاطعه\قها.jpg', single_blob) as images),'أخرى','true')
insert into BoycottProducts values (
	62, 'شاي العروسة', (select * from openrowset(bulk N'D:\مقاطعه\العروسه.webp', single_blob) as images),'مشروبات','true')
insert into BoycottProducts values (
	63, 'بسكويت كورونا', (select * from openrowset(bulk N'D:\مقاطعه\كورونا.jpg', single_blob) as images),'بسكوت','true')
insert into BoycottProducts values (
	64, 'بسكويت شمعدان', (select * from openrowset(bulk N'D:\مقاطعه\شمعدان.jpg', single_blob) as images),'بسكوت','true')
insert into BoycottProducts values (
	65, 'تايجر شيبسى', (select * from openrowset(bulk N'D:\مقاطعه\تايجر.jpg', single_blob) as images),'شيبسيات','true')
insert into BoycottProducts values (
	66, 'منتجات كاتيليو', (select * from openrowset(bulk N'D:\مقاطعه\كاتيليو.png', single_blob) as images),'أخرى','true')
insert into BoycottProducts values (
	67, 'منتجات بسكاتو', (select * from openrowset(bulk N'D:\مقاطعه\بسكاتو.jpg', single_blob) as images),'بسكوت','true')
insert into BoycottProducts values (
	68, 'هوهوز ', (select * from openrowset(bulk N'D:\مقاطعه\هوهوز.png', single_blob) as images),'شكولاتات','true')
insert into BoycottProducts values (
	69, 'مولتو ', (select * from openrowset(bulk N'D:\مقاطعه\مولتو.jpg', single_blob) as images),'شكولاتات','true')
insert into BoycottProducts values (
	70, 'تو دو', (select * from openrowset(bulk N'D:\مقاطعه\تودو.png', single_blob) as images),'شكولاتات','true')
insert into BoycottProducts values (
	71, 'سافو للغسالات العادية والأوتوماتيك.', (select * from openrowset(bulk N'D:\مقاطعه\سافو.jpg', single_blob) as images),'مسحوق','true')
insert into BoycottProducts values (
	72, 'أوكسي', (select * from openrowset(bulk N'D:\مقاطعه\اوكسى.jpg', single_blob) as images),'مسحوق','true')
insert into BoycottProducts values (
	73, 'بسكويت لوكس', (select * from openrowset(bulk N'D:\مقاطعه\لوكس.webp', single_blob) as images),'بسكوت','true')
insert into BoycottProducts values (
	74, ' باهي', (select * from openrowset(bulk N'D:\مقاطعه\باهى.webp', single_blob) as images),'مسحوق','true')
insert into BoycottProducts values (
	79, 'مياه بوفانا', (select * from openrowset(bulk N'D:\مقاطعه\بوفانا.webp', single_blob) as images),'مياه',1)
insert into BoycottProducts values (
	80, 'مياه أبار', (select * from openrowset(bulk N'D:\مقاطعه\ابار.webp', single_blob) as images),'مياه',1)
insert into BoycottProducts values (
	82, 'لبان سمارة', (select * from openrowset(bulk N'D:\مقاطعه\سماره.jpg', single_blob) as images),'لبان',1)
insert into BoycottProducts values (
	83, 'لبان ماربيلا', (select * from openrowset(bulk N'D:\مقاطعه\ماربيلا.jpg', single_blob) as images),'لبان',1)
insert into BoycottProducts values (
	84, 'مياه اكوا دلتا', (select * from openrowset(bulk N'D:\مقاطعه\اكوا دلتا.jpg', single_blob) as images),'مياه',1)
insert into BoycottProducts values (
	85, 'مياه إيزيس', (select * from openrowset(bulk N'D:\مقاطعه\ايزيس.jpg', single_blob) as images),'مياه',1)
insert into BoycottProducts values (
	86, 'مياه إيلانو', (select * from openrowset(bulk N'D:\مقاطعه\ايلانو.webp', single_blob) as images),'مياه',1)
insert into BoycottProducts values (
	87, 'مياه سيوة', (select * from openrowset(bulk N'D:\مقاطعه\سيوه.jpg', single_blob) as images),'مياه',1)
insert into BoycottProducts values (
	88, 'مياه لافى', (select * from openrowset(bulk N'D:\مقاطعه\لافى.jpeg', single_blob) as images),'مياه',1)
insert into BoycottProducts values (
	96, 'كلوريل', (select * from openrowset(bulk N'D:\مقاطعه\كلوريل.webp', single_blob) as images),'منظفات',1)
insert into BoycottProducts values (
	97, 'فريدا ', (select * from openrowset(bulk N'D:\مقاطعه\فريدا.webp', single_blob) as images),'منظفات',1)
insert into BoycottProducts values (
	98, 'فلفيتا ', (select * from openrowset(bulk N'D:\مقاطعه\فلفيتا.jpg', single_blob) as images),'منظفات,مسحوق',1)
insert into BoycottProducts values (
	101, 'ريماس لاند', (select * from openrowset(bulk N'D:\مقاطعه\ريماس.jpg', single_blob) as images),'جبن',1)
insert into BoycottProducts values (
	102, 'رودس', (select * from openrowset(bulk N'D:\مقاطعه\رودس.jpg', single_blob) as images),'جبن',1)
insert into BoycottProducts values (
	103, 'لبنيتا', (select * from openrowset(bulk N'D:\مقاطعه\لبنيتا.jpg', single_blob) as images),'جبن',1)








select * from BoycottProducts where categories like '%مسحوق%' or  categories like '%منظفات%'

alter table BoycottProducts add categories nvarchar(50)

update BoycottProducts
	set categories = 'منظفات,صابون'
	where id in (95,38)

update BoycottProducts
	set categories = 'منظفات,مسحوق'
	where id in (3,47,48,71,72,74)

update BoycottProducts
	set categories = 'شيبسيات'
	where id in  (1,6,7,8,12,13)  

update BoycottProducts
	set categories = 'مسحوق'
	where id in (3,47,46,48)

update BoycottProducts
	set categories = 'مياه غازيه'
	where id in (2,9,10,11,28,34)

update BoycottProducts
	set categories = 'مزيل عرق'
	where id in (4,39)

update BoycottProducts
	set categories = 'شكولاتات'
	where id in (16,17,18,19,20,21,22,23,31,32,33)

update BoycottProducts
	set categories = 'بسكوت'
	where id in (14,36)

update BoycottProducts
	set categories = 'شامبو'
	where id in (49,42,37)

update BoycottProducts
	set categories = 'مشروبات'
	where id in (45,44)
select * from BoycottProducts
update BoycottProducts
	set categories = 'منظفات'
	where id in (24,25,26,38)

update BoycottProducts
	set categories = 'أخرى'
	where id in (5,15,27,29,30,35,40,41,43)

alter table BoycottProducts add isWithUs bit
select * from BoycottProducts

update BoycottProducts
	set isWithUs = 'false'

update BoycottProducts
	set name ='مياه نستله' , categories = 'مياه'
	where id = 15

update BoycottProducts
	set categories = 'لبان'
	where id in (40 , 41,35)


select * from BoycottProducts



select * from BoycottProducts

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'شيبسيات' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'شيبسيات' and isWithUs = 'true'

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'مياه غازيه' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'مياه غازيه' and isWithUs = 'true'

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'مسحوق' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'مسحوق' and isWithUs = 'true'

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'مزيل عرق' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'مزيل عرق' and isWithUs = 'true'

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'لبان' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'لبان' and isWithUs = 'true'

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'مياه' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'مياه' and isWithUs = 'true'

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'بسكوت' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'بسكوت' and isWithUs = 'true'

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'شكولاتات' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'شكولاتات' and isWithUs = 'true'

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'منظفات' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'منظفات' and isWithUs = 'true'

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'شامبو' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'شامبو' and isWithUs = 'true'

select name, images, categories, isWithUs from BoycottProducts
	where categories = 'مشروبات' and isWithUs = 'false'
select name, images, categories, isWithUs from BoycottProducts
	where categories = 'مشروبات' and isWithUs = 'true'

select * from BoycottProducts 
	where name = 'دومتى'
update BoycottProducts
	set categories = 'جبن'
	where id = 58
