FROM octohost/nginx

ADD . /srv/www

EXPORT 80

CMD nginx
