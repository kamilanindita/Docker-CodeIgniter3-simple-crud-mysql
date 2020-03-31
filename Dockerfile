FROM php:7.3-apache

RUN docker-php-ext-install pdo pdo_mysql mysqli

#mengaktifkan mod rewrite engine melalui perintah a2enmod rewrite, sehingga nanti tidak perlu menulis index.php ketika mengakses web CI yang dijalankan.
RUN a2enmod rewrite

COPY . /var/www/html/

EXPOSE 80

#jangan lupa untuk codeigniter 3 pada file config ubah isi pada konfigurasi session menjadi $config['sess_save_path'] = '/tmp';