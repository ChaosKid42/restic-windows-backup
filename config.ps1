# backup configuration
$ExeName = "restic.exe"
$InstallPath = "C:\restic"
$ResticExe = Join-Path $InstallPath $ExeName
$StateFile = Join-Path $InstallPath "state.xml"
$WindowsExcludeFile = Join-Path $InstallPath "windows.exclude"
$LocalExcludeFile = Join-Path $InstallPath "local.exclude"
$LogPath = Join-Path $InstallPath "logs"
$LogRetentionDays = 30
$InternetTestAttempts = 1
$GlobalRetryAttempts = 1
$IgnoreMissingBackupSources = $false
$AdditionalBackupParameters = @("--exclude-if-present", ".nobackup")

# maintenance configuration
$SnapshotMaintenanceEnabled = $true
$SnapshotRetentionPolicy = @("--group-by", "host,tags", "--keep-daily", "7", "--keep-weekly", "4", "--keep-monthly", "12", "--keep-yearly", "1000")
$SnapshotPrunePolicy = @("--max-unused", "1%")
$SnapshotMaintenanceInterval = 7
$SnapshotMaintenanceDays = 30
$SnapshotDeepMaintenanceDays = 90

# email configuration
$SendEmailOnSuccess = $true
$SendEmailOnError = $true

# Paths to backup
$BackupSources = @{}
$BackupSources["C:\"] = @(
    'Users\Hannah\OneDrive\Dokumente',
    'Users\Hannah\Documents'
)
#$BackupSources["D:\"] = @(
#    'Software'
#)
#$BackupSources["DRIVE_LABEL_NAME_OR_SERIAL_NUMBER"] = @(
#    'FolderName'
#)
