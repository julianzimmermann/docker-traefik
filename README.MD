# Docker Setup for Traefik

## Setup

* rename `.env.dist` to `.env` and adjust env variables to your need
* rename `data/acme.json.dist` to `data/acme.json`
* rename `data/traefik.log.dist` to `data/traefik.log`

## Build

`docker-compose up -d --build reverse-proxy`

## Run

`docker-compose up -d reverse-proxy` or `docker-compose start` 