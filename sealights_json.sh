#! /bin/sh

echo '{
"token": "eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL1BST0QtTUVUUk9CQU5LLmF1dGguc2VhbGlnaHRzLmlvLyIsImp3dGlkIjoiUFJPRC1NRVRST0JBTkssaS0wNmUwYmRhNTVhY2E3ZjViOSxBUElHVy1kNjE1ZTNlNS01MTIxLTQ3NzYtOWNkYS0yMDU3MzVkMGMzMmEsMTYwNjk3NTQwMTY3NSIsInN1YmplY3QiOiJtZXRyb2JhbmtAYWdlbnQiLCJhdWRpZW5jZSI6WyJhZ2VudHMiXSwieC1zbC1yb2xlIjoiYWdlbnQiLCJ4LXNsLXNlcnZlciI6Imh0dHBzOi8vbWV0cm9iYW5rLnNlYWxpZ2h0cy5jby9hcGkiLCJzbF9pbXBlcl9zdWJqZWN0IjoiIiwiaWF0IjoxNjA2OTc1NDAxfQ.dFH3scHxUixm1ZtoFabWgTV2tG85piU38HKhhjqxlqT-NfBHLFnKkTd0CpJpLzbFLO8wOJQYiFQuHoOKW2O15X0gp78EY5-saVDopRD0mpSAsxtY2YrHecuM73NoPzcV861RVJMV5IP2TonCwV-B6PIyDKI6BbKcvjPHpYN4VLxszIMKmXL3aALRA41HYgDLAkh_WPa3qRQM4_-30Sry_8yKumj3WQa0m8lTJ12Pbg4qpeJb9WInJyMn_S8Hdv4bcQBpCcj99Vobh-jdyufsDco1g9nLq18L9zUEC2jTHYrV0ye3u53PoMi-ZFXjN7vGdE8fWNM7v1FEEONQKKaUDmfbaxJSaSiOLvOt1Q8KKygwQwBLe4AUOCzlqaex4dbRY96MZ-int-y8dtNuNwYUM4Fn32QwnLKCJGlFjbWS13Xr51_rtaVYHvuV2xoPdjf3x1ISXEVdgNHcIFLkTji8FEx9yhFyXP7Nnyg7R0CLcj1CoUJCUeA9E2yVKIOXBR4QoRULG53LLVmEYazyVbWa618e-O0PbeFk99tbqeXqVnHEYYI6T76RXleoW2ch9Ybny5z6PAW2DUi4vMBJt4hW267cD13bKhvN-mzVqpGxFSjr3k1LUK5psjWHVHzF4C3Pj6c1JcWE-9khU6bAuWBrSbQVfpz5i-gV4BcMYDZfjrs",
"createBuildSessionId": true,
"appName": "$(Build.DefinitionName)",
"branchName": "$(Build.SourceBranchName)",
"buildName": "$(Build.BuildNumber)",
"packagesIncluded": "*com.mb.*",
"packagesExcluded": "",
"filesIncluded": "*.class",
"filesExcluded": "*test-classes*",
"recursive": true,
"includeResources": true,
"labId": null,
"executionType": "full",
"logEnabled": true,
"logDestination": "console",
"logLevel": "info",
"logFolder": "/tmp",
"sealightsJvmParams": {},
"enabled": true,
"filesStorage": "/tmp"
}' > ./sealights.json
