<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

## Project FrameWork Laravel




## Instalation

1. Clone Repository
```
git clone https://github.com/Almer20/todo-app.git
cd todo-app
composer update
cp .env.example .env
```

2. Buka .env ubah database
```
DB_PORT=3306
DB_DATABASE=nama_database
DB_USERNAME=root
DB_PASSWORD=
```
4. Menjalankan Composer laravel jetstream
```
composer require laravel/jetstream
php artisan jetstream:install livewire --teams
npm install && npm run dev
php artisan vendor:publish --tag=jetstream-views
```

5. Membuat `key:generate` dan migrate database
```
php artisan key:generate
php artisan migrate --seed
```

6. Jalankan laravel
```
php artisan serve
npm run dev 
```



