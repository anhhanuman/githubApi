COLLECTION_PATH="https://api.getpostman.com/collections/${POSTMAN_GITHUB_BRANCHES_COLLECTION_UUID}?apikey=${POSTMAN_GITHUB_API_KEY_ANH}"
ENVIRONMENT_PATH="https://api.getpostman.com/collections/environments/${POSTMAN_ENVIRONMENT_GITHUB_PROD}?apikey=${POSTMAN_GITHUB_API_KEY_ANH}"
POSTMAN_REPO_TEST_SUITE_FOLDER="branches"
TEST_REPO_DATA_PATH="test-cases/test_repos.csv"
TEST_REPO_REPORT_PATH="testResults/owner_repo_test/htmlreport.html"
TEST_REPO_REPORT_NAME="GitHub API OWNER REPO REPORT"

POSTMAN_APPIUM_TEST_SUITE_FOLDER="branch"
TEST_APPIUM_DATA_PATH="test-cases/test_appium_specific_branch.csv"
TEST_APPIUM_REPORT_PATH="testResults/appium/htmlreport.html"
TEST_APPIUM_REPORT_NAME="GitHub API APPIUM BRANCH REPORT"

POSTMAN_FOLDER=""
DATA=""

run_suite() {
  npx newman run "${COLLECTION_PATH}" \
    --verbose \
    --insecure \
    --environment "${ENVIRONMENT_PATH}" \
    --iteration-data "$DATA" \
    --folder "$POSTMAN_FOLDER" \
    --reporters htmlextra \
    --reporter-htmlextra-export "$REPORT_PATH" \
    --reporter-htmlextra-title "$REPORT_NAME" \
    --reporter-htmlextra-browserTitle "GitHub API" \
    --reporter-htmlextra-timezone "America/Los_Angeles" \
    --reporter-htmlextra-showMarkdownLinks \
    --reporter-htmlextra-logs \
    --reporter-htmlextra-omitHeaders \
    --reporter-htmlextra-noSyntaxHighlighting \
    --reporter-htmlextra-titleSize 5
}

run_test() {
  suite_name=$1
  case $suite_name in

  owner_repo_test)
    DATA=$TEST_REPO_DATA_PATH
    POSTMAN_FOLDER=$POSTMAN_REPO_TEST_SUITE_FOLDER
    REPORT_PATH=$TEST_REPO_REPORT_PATH
    REPORT_NAME=$TEST_REPO_REPORT_NAME
    run_suite
    ;;

  appium_branches_test)
    DATA=$TEST_APPIUM_DATA_PATH
    POSTMAN_FOLDER=$POSTMAN_APPIUM_TEST_SUITE_FOLDER
    REPORT_PATH=$TEST_APPIUM_REPORT_PATH
    REPORT_NAME=$TEST_APPIUM_REPORT_NAME
    run_suite
    ;;

  *)
    DATA=""
    POSTMAN_FOLDER=""
    run_suite
    ;;
  esac
}

run_test $1