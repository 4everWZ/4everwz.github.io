$ErrorActionPreference = "Stop"

function Assert-FileContains {
  param(
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][string]$Pattern,
    [Parameter(Mandatory = $true)][string]$Message
  )

  $content = Get-Content -Raw -LiteralPath $Path
  if ($content -notmatch $Pattern) {
    throw "$Message (`"$Pattern`" not found in $Path)"
  }
}

function Assert-FileNotContains {
  param(
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][string]$Pattern,
    [Parameter(Mandatory = $true)][string]$Message
  )

  $content = Get-Content -Raw -LiteralPath $Path
  if ($content -match $Pattern) {
    throw "$Message (`"$Pattern`" found in $Path)"
  }
}

Assert-FileContains -Path "index.md" -Pattern "Weizheng Wang" -Message "Homepage should lead with the academic identity"
Assert-FileContains -Path "index.md" -Pattern "Selected Publications" -Message "Homepage should include a selected publications index"
Assert-FileContains -Path "index.md" -Pattern "Research Experience" -Message "Homepage should include selected research experience"
Assert-FileContains -Path "index.md" -Pattern "Submitted to ICIP 2026" -Message "Homepage should feature the under-review ICIP work"
Assert-FileContains -Path "index.md" -Pattern "Engineering Research Express" -Message "Homepage should feature the Engineering Research Express paper"
Assert-FileContains -Path "index.md" -Pattern "Huawei MindSpore" -Message "Homepage should include the MindSpore research internship"

Assert-FileContains -Path "about.markdown" -Pattern "Research Interests" -Message "About page should foreground research interests"
Assert-FileContains -Path "projects.md" -Pattern "title: Research Experience" -Message "The projects URL should now present research experience"
Assert-FileContains -Path "projects.md" -Pattern "MindNLP" -Message "Research experience should include MindNLP work"
Assert-FileContains -Path "publications.md" -Pattern "Submitted to ICIP 2026" -Message "Publications page should include the under-review ICIP paper"
Assert-FileContains -Path "publications.md" -Pattern "Under review" -Message "Under-review publication status should be explicit"
Assert-FileContains -Path "awards.md" -Pattern "Challenge Cup" -Message "Awards page should include Challenge Cup recognition"
Assert-FileContains -Path "_config.yml" -Pattern "Academic website" -Message "Site description should use an academic identity"
Assert-FileContains -Path "_layouts/default.html" -Pattern "Skip to content" -Message "Default layout should provide a skip link"
Assert-FileContains -Path "_layouts/default.html" -Pattern "theme-color" -Message "Default layout should declare a theme color"

@("index.md", "about.markdown", "_config.yml") | ForEach-Object {
  Assert-FileNotContains -Path $_ -Pattern "Industry Track" -Message "Academic pages should not expose an industry track"
  Assert-FileNotContains -Path $_ -Pattern "job applications" -Message "Academic pages should not use job-application positioning"
  Assert-FileNotContains -Path $_ -Pattern "AI/ML researcher and builder" -Message "Academic pages should not use the old dual-track identity"
}

@("index.md", "projects.md") | ForEach-Object {
  Assert-FileNotContains -Path $_ -Pattern "CleanSlateTab|SnapPin|DailyPaper|research-writing-harness" -Message "Primary academic pages should omit unrelated product projects"
}

Assert-FileNotContains -Path "index.md" -Pattern "\p{So}" -Message "Homepage should not use symbol-style emoji icons"

$sourceCv = Get-Item -LiteralPath "Weizheng_Wang_CV.pdf"
$siteCv = Get-Item -LiteralPath "assets/CV.pdf"
if ($sourceCv.Length -ne $siteCv.Length) {
  throw "assets/CV.pdf should match Weizheng_Wang_CV.pdf by size"
}

Write-Host "Content verification passed."
