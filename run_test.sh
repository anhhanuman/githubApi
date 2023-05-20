COLLECTION_PATH="${POSTMAN_API_URL}/${POSTMAN_GITHUB_BRANCHES_COLLECTION_UUID}?apikey=${POSTMAN_GITHUB_API_KEY_ANH}"
ENVIRONMENT_PATH="${POSTMAN_API_URL}/environments/${POSTMAN_ENVIRONMENT_GITHUB_PROD}?apikey=${POSTMAN_GITHUB_API_KEY_ANH}"
POSTMAN_TEST_SUITE_FOLDER="branches"
POSTMAN_FOLDER=""
TEST_REPO_DATA_PATH="test-cases/repo"
TEST_REPO_REPORT_PATH="testResults/owner_repo_test/htmlreport.html"
TEST_REPO_REPORT_NAME="GitHub API OWNER REPO REPORT"
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
    POSTMAN_FOLDER=$POSTMAN_TEST_SUITE_FOLDER
    REPORT_PATH=$TEST_REPO_REPORT_PATH
    REPORT_NAME=$TEST_REPO_REPORT_NAME
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