# Setup

Walkthrough of how project was initially setup.

1. Create Slack account
2. Add Hubot integration [here](https://slack.com/apps/new/A0F7XDU93-hubot)
    * Grab the given `HUBOT_SLACK_TOKEN`
3. Follow [hubot slack setup guide](https://slackapi.github.io/hubot-slack/)
    ```
    npm install -g yo generator-hubot
    nodenv rehash
    yo hubot --adapter=slack
    ```
    
4. Customize project
    * Update docs
    * Update Procfile
    * Add bin/mbot, .node-version, Brewfile, Makefile
5. Initial commit
6. Create and deploy Heroku app
    ```
    heroku login

    heroku create --stack cedar
    heroku addons:add redistogo:nano

    heroku config:set HEROKU_URL=$HEROKU_URL -a $HEROKU_APP_NAME
    heroku config:set HUBOT_SLACK_TOKEN=$HUBOT_SLACK_TOKEN -a $HEROKU_APP_NAME

    heroku git:remote -a $HEROKU_APP_NAME
    git push heroku master
    ```
