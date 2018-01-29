@echo off

REM environment variable SCAPIG_REPOSITORY must be set

(
  setlocal EnableDelayedExpansion
  echo starting scapig-api-definition
  (start.bat scapig-api-definition 9010)
  echo starting scapig-scope
  (start.bat scapig-scope 9011)
  echo starting scapig-application
  (start.bat scapig-application 9012)
  echo starting scapig-delegated-authority
  (start.bat scapig-delegated-authority 9013)
  echo starting scapig-requested-authority
  (start.bat scapig-requested-authority 9014)
  echo starting scapig-oauth
  (start.bat scapig-oauth 9015)
  echo starting scapig-developer
  (start.bat scapig-developer 9016)
  echo starting scapig-developer-hub
  (start.bat scapig-developer-hub 9020)
  echo starting scapig-gateway
  (start.bat scapig-gateway 9018)
  echo starting scapig-publisher
  (start.bat scapig-publisher 9019)
  echo starting api-example
  (start.bat api-example 9021)
  echo starting login-example
  (start.bat login-example 9040)
  endlocal
)