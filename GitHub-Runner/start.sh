#!/bin/sh

./bin/installdependencies.sh

RUNNER_ALLOW_RUNASROOT="1" ./config.sh --url https://github.com/TejaswiHaramurali/TestRepository --token AHWZL2RNGA5PAWIY6QRPUA3ETHDSQ --unattended

RUNNER_ALLOW_RUNASROOT="1" ./run.sh
