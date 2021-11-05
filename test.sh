#!/usr/bin/env bash

curl -s --location --request POST --header "Authorization: Bearer $TOKEN" \
    --header 'Content-Type: application/json' \
    --data-raw '{"head": "update", "base": "master", "title": "auto-updates"}' \
    https://api.github.com/repos/$GITHUB_REPOSITORY/pulls


        # pulls_api_url = 'https://api.github.com/repos/{0}/pulls'.format(self.repo)

        # body = {"head": UPDATER_BRANCH_NAME, "base": "master", "title": "Update to latest upstream"}
        
        # print("Creating pull request.")
        
        # response = requests.post(pulls_api_url, headers=self._get_github_auth_header(token), data=json.dumps(body))