[![Docker Status](https://dockerbuildbadges.quelltext.eu/status.svg?organization=onekiloparsec&repository=heroku-cli-yarn-git-subtree)](https://hub.docker.com/r/onekiloparsec/heroku-cli-yarn-git-subtree/)
[![CircleCI](https://circleci.com/gh/onekiloparsec/heroku-cli-yarn-git-subtree.svg?style=svg)](https://circleci.com/gh/onekiloparsec/heroku-cli-yarn-git-subtree)

# onekiloparsec/heroku-cli-yarn-git-subtree
Dockerfile for Heroku deployment of Node.js project (with a dist/ folder).

(Originaly inspired by https://github.com/sue445/dockerfile-heroku-cli).

https://hub.docker.com/r/onekiloparsec/heroku-cli-yarn-git-subtree

## Build
```bash
docker build --rm -t heroku-cli-yarn-git-subtree .
```

## Running
```bash
docker run -it --rm heroku-cli-yarn-git-subtree bash
```

## Example of deployment

Assuming the webapp is built and located inside `dist/`, and the git remote of the Heroku
app is called `heroku`. The command is to be run at same the level as the `dist/` directory.

```bash
git subtree push --prefix=dist heroku master
```

Force the deploy:

```bash
git push heroku `git subtree split --prefix dist master`:master --force
```
