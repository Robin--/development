$NugetVersionKey = "NugetVersion:";

$output = .\tools\Appccelerate.Version\Appccelerate.Version .\

foreach ($line in $output)
{
	if ($line.StartsWith($NugetVersionKey))
	{
		$nugetVersion = $line.Substring($NugetVersionKey.length).Trim();
	}
}

Write-Host "##teamcity[buildNumber '$nugetVersion']"