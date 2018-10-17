docker run -d \
  -p 3000:3000 \
  --name=ems-phone \
  --net="ems" \
  --ulimit nofile=98304:98304 \
  --mount type=bind,source="$(pwd)"/res/e-mission-phone/connectionConfig.json,target=/usr/src/app/www/json/connectionConfig.json,readonly \
  e-mission-phone:latest
