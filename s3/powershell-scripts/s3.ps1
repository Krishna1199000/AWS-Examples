Import-Module AWS.Tools.S3

$region = "ap-south-1"

$bucketName = Read-Host -Prompt 'Enter the s3 bucket name'


Write-Host "AWS Region: $region"
Write-Host "S3 Bucket: $bucketName"

New-S3Bucket -BucketName $bucketName -Region $region

$fileName = 'myfile.txt'
$fileContent = 'Hello World!'
Set-Content -path $fileName -Value $fileContent

Write-S3Object -BucketName $bucketName -File 