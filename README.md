### Test Automation with GitHub API

Choose the following frameworks
- **Postman**: Nasdaq Tower for being named to the 2023 [Enterprise Tech 30 list]([Enterprise Tech 30 list](https://www.linkedin.com/posts/postman-platform_were-on-the-nasdaq-tower-for-being-named-activity-7064653402059747329-BC4n/?trk=public_profile_like_view))
- **GitHub Actions**: Microsoft leading hosting services, version control, continuous integration
- **Bash**
- **Javascript** Postman provides scripting with Javascript
- **NodeJS** use for making calls scripts and installing packages

###  Implementation details


| **Item**      | **Description**                     | **Info**                                                                                                                                                                                                                                                                                                                                      | **Comment**                                                                                                                                                       |
|---------------|-------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Endpoints** | `GitHub Branches`                   | [branches](https://docs.github.com/en/rest/overview/endpoints-available-for-github-apps?apiVersion=2022-11-28)                                                                                                                                                                                                                                | There are a lot of endpoints available, I chose the `branches` to demonstrate. Scroll down a little bit to see the `branches enpoints`                            |
| **API calls** | `Postman`                           | **-** [Github API workspace](https://www.postman.com/spacecraft-explorer-62749893/workspace/github-api-not-official)<br/><br/> **-** [API Testing Collections](https://www.postman.com/spacecraft-explorer-62749893/workspace/github-api-not-official/collection/14798756-3ce26be7-047a-4234-af56-8a978978d41e?action=share&creator=14798756) | There are collections which are used to design requests, response examples. There are also documents for your reading there                                       |
| **Test cases** | `.csvs`                             | [test-cases](https://github.com/anhhanuman/githubApi/tree/main/test-cases)                                                                                                                                                                                                                                                                    | Open by any csvs reader or microsoft excel or spreadsheet <br/><br/>Easily to read, update, **scale** and **maintain**                                            |
| **CICD**      | `github actions`                    | [CI job](https://github.com/anhhanuman/githubApi/actions/runs/5031513262)                                                                                                                                                                                                                                                                     |                                                                                                                                                                   |
| **Report**    | `actions/upload-artifact@v3`        | [CI jobs artifacts](https://github.com/anhhanuman/githubApi/actions/runs/5031513262)                                                                                                                                                                                                                                                          | The test report is passed and failed on-purpose to demonstrate the capabilities of <br/> - Alerting the failure of system <br/> - Or test case need to be updated |
| **Packages**  | `Newman, newman-reporter-htmlextra` | [package.json](https://github.com/anhhanuman/githubApi/blob/main/package.json)                                                                                                                                                                                                                                                                | CLI Interacting with POSTMAN, and reporting framework                                                                                                             |

### What can be implemented more
- Slack message when jobs completed and notify team
- Dashboard deployments for test results
- Performance tests
- Contract tests

### Highlights

#### Postman scripting - resuable functions
<img width="852" alt="image" src="https://github.com/anhhanuman/githubApi/assets/43400649/363cac4a-af77-4c38-9ec5-d46e2bbd4a72">

#### Mantainable tests
<img width="1104" alt="image" src="https://github.com/anhhanuman/githubApi/assets/43400649/87bee638-c39f-4392-b90b-9069f4f4ba59">

#### Test cases design friendly csvs
<img width="1974" alt="image" src="https://github.com/anhhanuman/githubApi/assets/43400649/7afeb6aa-c949-416f-b1ab-c4c0c4cc7029">

### CI jobs parallel
<img width="1858" alt="image" src="https://github.com/anhhanuman/githubApi/assets/43400649/1cf7898a-6c60-4343-8d9b-17138cf8a273">

#### Reports clearly
<img width="1114" alt="image" src="https://github.com/anhhanuman/githubApi/assets/43400649/6ba0b3f7-370b-49c5-9386-e64eea9ca797">
