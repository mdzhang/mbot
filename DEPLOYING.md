# Deploying

1. Follow [contributing guidelines](CONTRIBUTING.md)
2. Add heroku git remote

    ```
    heroku git:remote -a $HEROKU_APP_NAME
    ```

3. Deploy changes by pushing to heroku

    ```
    git push heroku master
    ```
