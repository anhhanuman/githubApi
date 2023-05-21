### Test Automation with GitHub API

Choose the following frameworks
- **Postman**: Nasdaq Tower for being named to the 2023 [Enterprise Tech 30 list](Enterprise Tech 30 list)
- **GitHub Actions**: Microsoft leading hosting services, version control, continuous integration
- **Bash**
- **Javascript** Postman provides scripting with Javascript
- **NodeJS** use for making calls scripts and installing packages

###  Implementation details


| **Item**      | **Description**                     | **Info**                                                                                                                                                                                                                                                                                                                                      | **Comment**                                                                                                                            |
|---------------|-------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoints** | `GitHub Branches`                   | [branches](https://docs.github.com/en/rest/overview/endpoints-available-for-github-apps?apiVersion=2022-11-28)                                                                                                                                                                                                                                | There are a lot of endpoints available, I chose the `branches` to demonstrate. Scroll down a little bit to see the `branches enpoints` |
| **API calls** | `Postman`                           | **-** [Github API workspace](https://www.postman.com/spacecraft-explorer-62749893/workspace/github-api-not-official)<br/><br/> **-** [API Testing Collections](https://www.postman.com/spacecraft-explorer-62749893/workspace/github-api-not-official/collection/14798756-3ce26be7-047a-4234-af56-8a978978d41e?action=share&creator=14798756) | There are collections which are used to design requests, response examples. There are also documents for your reading there            |
| **Test cases** | `.csvs`                             | [test-cases](https://github.com/anhhanuman/githubApi/tree/main/test-cases)                                                                                                                                                                                                                                                                    | Open by any csvs reader or microsoft excel or spreadsheet <br/><br/>Easily to read, update, **scale** and **maintain**                 |
| **CICD**      | `github actions`                    | [CI job](https://github.com/anhhanuman/githubApi/actions/runs/5031513262)                                                                                                                                                                                                                                                                     |                                                                                                                                        |
| **Report**    | `actions/upload-artifact@v3`        | [CI jobs artifacts](https://github.com/anhhanuman/githubApi/actions/runs/5031513262)                                                                                                                                                                                                                                                          |                                                                                                                                        |
| **Packages**  | `Newman, newman-reporter-htmlextra` | [package.json](https://github.com/anhhanuman/githubApi/blob/main/package.json)                                                                                                                                                                                                                                                                | CLI Interacting with POSTMAN, and reporting framework                                                                                  |

### What can be implemented more
- Slack message when jobs completed and notify team
- Dashboard deployments for test results
- Performance tests
- Contract tests