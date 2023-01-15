# Template file for backup destination configuration and email passwords.
# Update this file to point to your restic repository and email service.
# Rename to `secrets.ps1`

# restic backup repository configuration
$Env:B2_ACCOUNT_ID='<KEY>'
$Env:B2_ACCOUNT_KEY='<KEY>'
$Env:RESTIC_REPOSITORY='<REPO URL>'
$Env:RESTIC_PASSWORD='<BACKUP PASSWORD>'

# email configuration
$PSEmailServer='<SMTP SERVER>'
$ResticEmailConfig=@{UseSsl=$true; Port="587"}
$ResticEmailTo1='<DESTINATION EMAIL ADDRESS>'
$ResticEmailTo2='<DESTINATION EMAIL ADDRESS>'
$ResticEmailFrom='<FROM EMAIL ADDRESS>'
$ResticEmailUsername='<EMAIL LOGIN USERNAME>'
$ResticEmailPassword='<EMAIL PASSWORD>'
