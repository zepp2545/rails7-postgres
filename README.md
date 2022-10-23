# README

This is the template of dockerized environment for rails 7.

You can create an rails app out of this template at ease.
<br/><br/>

## Environment
Ruby: 2.75\
Rails: 7.0.4
<br/><br/>

## Procedures

1. Clone the app to your local

2. Replace app name to desired name
```
current app name: rails7-postgres
```

2. Build image
```
docker compose build
```

3. Create database
```
docker compose run web bin/rails db:create
```

4. Start container
```
docker compose up
```
