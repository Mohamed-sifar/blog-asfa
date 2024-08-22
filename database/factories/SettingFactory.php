<?php

use Faker\Generator as Faker;

$factory->define(App\Setting::class, function (Faker $faker) {
	return [
		'website_title' => 'Blog Master',
		'logo' => 'logo.png',
		'favicon' => 'favicon.png',
		'about_us' => 'Blog Master - your hub for insightful and engaging content across technology, lifestyle, health, and more. Our dedicated team delivers high-quality, thought-provoking articles to keep you informed and inspired. Stay connected with us for the latest trends, tips, and insights.',
		'copyright' => 'Copyright 2024 <a href="http://localhost/blog_master/index.php" target="_blank">BlogMaster</a>, All rights reserved.',
		'email' => 'blogmaster@gmail.com',
		'phone' => '+94 65 224 04 86',
		'mobile' => '+94 77 336 81 81',
		'fax' => '808080',
		'address_line_one' => 'Eravur Urban Council',
		'address_line_two' => 'QJF5+88X, Town',
		'state' => 'Eastern',
		'city' => 'Eravur',
		'zip' => '30300',
		'country' => 'Sri Lanka',
		'map_iframe' => '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d18804.485512128074!2d81.60838301988815!3d7.773265234072803!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3afad3f6afb5ab2d%3A0x7b1ad8cea343a9fc!2zRXJhdnVyIFVyYmFuIENvdW5jaWwg4K6P4K6x4K6-4K614K-C4K6w4K-NIOCuqOCuleCusOCumuCuquCviCDgtpHgtrvgt4_gt4Dgt5Tgtrvgt4og4Lax4Lac4La7IOC3g-C2t-C3j-C3gA!5e0!3m2!1sen!2slk!4v1722326304860!5m2!1sen!2slk" width="80" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>',
		'facebook' => 'https://www.facebook.com/asn.marzook/',
		'twitter' => 'https://twitter.com/asn.marzook',
		'google_plus' => 'https://plus.google.com/+asn.marzook',
		'linkedin' => 'https://www.linkedin.com/in/asna-marzook/',
		'meta_title' => 'Blog Master',
		'meta_keywords' => 'Blog Master, Coding, Blog',
		'meta_description' => 'Blog Master - your hub for insightful and engaging content across technology, lifestyle, health, and more. Our dedicated team delivers high-quality, thought-provoking articles to keep you informed and inspired. Stay connected with us for the latest trends, tips, and insights.',
		'gallery_meta_title' => 'Blog Master',
		'gallery_meta_keywords' => 'Blog Master, Coding, Gallery',
		'gallery_meta_description' => 'Blog Master - your hub for insightful and engaging content across technology, lifestyle, health, and more. Our dedicated team delivers high-quality, thought-provoking articles to keep you informed and inspired. Stay connected with us for the latest trends, tips, and insights.',
	];
});
