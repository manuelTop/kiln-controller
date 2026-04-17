start a run

    curl -d '{"cmd":"run", "profile":"cone-05-long-bisque"}' -H "Content-Type: application/json" -X POST http://0.0.0.0:8081/api

skip the first part of a run
restart the kiln on a specific profile and start at minute 60

    curl -d '{"cmd":"run", "profile":"cone-05-long-bisque","startat":60}' -H "Content-Type: application/json" -X POST http://0.0.0.0:8081/api

stop a schedule

    curl -d '{"cmd":"stop"}' -H "Content-Type: application/json" -X POST http://0.0.0.0:8081/api

post a memo

    curl -d '{"cmd":"memo", "memo":"some significant message"}' -H "Content-Type: application/json" -X POST http://0.0.0.0:8081/api

stats for currently running schedule

    curl -X GET http://0.0.0.0:8081/api/stats

pause a run (maintain current temperature until resume)

    curl -d '{"cmd":"pause"}' -H "Content-Type: application/json" -X POST http://0.0.0.0:8081/api

resume a paused run
    
    curl -d '{"cmd":"resume"}' -H "Content-Type: application/json" -X POST http://0.0.0.0:8081/api

start pid autotune (runs kiln-tuner.py in background; kiln must be idle)

    curl -d '{"cmd":"autotune_start","target_temp":400,"tangent_divisor":8}' -H "Content-Type: application/json" -X POST http://0.0.0.0:8081/api

check pid autotune status/output

    curl -d '{"cmd":"autotune_status"}' -H "Content-Type: application/json" -X POST http://0.0.0.0:8081/api

stop a running pid autotune

    curl -d '{"cmd":"autotune_stop"}' -H "Content-Type: application/json" -X POST http://0.0.0.0:8081/api

