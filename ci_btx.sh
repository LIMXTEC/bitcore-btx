#!/bin/bash
docker-compose -f docker-compose.test_btx.yml run --entrypoint "$1" test_runner

