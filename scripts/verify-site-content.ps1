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
Assert-FileContains -Path "index.md" -Pattern "MulRobBench" -Message "Homepage should feature MulRobBench"
Assert-FileContains -Path "index.md" -Pattern "TRIM:" -Message "Homepage should feature the structured-pruning manuscript"
Assert-FileContains -Path "index.md" -Pattern "IEEE ICIP" -Message "Homepage should feature the ICIP paper"
Assert-FileContains -Path "index.md" -Pattern "Zayed University" -Message "Homepage should include the current research assistant role"
Assert-FileContains -Path "index.md" -Pattern "Huawei MindSpore" -Message "Homepage should include the MindSpore research internship"

Assert-FileContains -Path "about.markdown" -Pattern "Research Interests" -Message "About page should foreground research interests"
Assert-FileContains -Path "projects.md" -Pattern "title: Research Experience" -Message "The projects URL should now present research experience"
Assert-FileContains -Path "projects.md" -Pattern "MindNLP" -Message "Research experience should include MindNLP work"
Assert-FileContains -Path "publications.md" -Pattern "Submitted to <em>Applied Soft Computing" -Message "MulRobBench should use the CV's current submission venue"
Assert-FileContains -Path "publications.md" -Pattern "Submitted to <em>Remote Sensing" -Message "H2T-DEIM should use the CV's current submission venue"
Assert-FileContains -Path "publications.md" -Pattern "submitted manuscripts are not yet accepted" -Message "Submission status should be explicit"
Assert-FileContains -Path "publications.md" -Pattern "045355" -Message "The Engineering Research Express article number should match the CV"
Assert-FileContains -Path "publications.md" -Pattern "Improved YOLOv11" -Message "The earlier YOLOv11 paper should be retained"
Assert-FileContains -Path "publications.md" -Pattern "Ordos Open-Pit Coal Mine" -Message "The earlier Ordos paper should be retained"
$publications = Get-Content -Raw -LiteralPath "publications.md"
if ([regex]::Matches($publications, 'Submitted to <em>').Count -ne 6 -or
    [regex]::Matches($publications, 'Submitted to <em>IEEE ICASSP 2027').Count -ne 4) {
  throw "Publications should include six submitted manuscripts, four submitted to ICASSP 2027"
}
@("index.md", "publications.md") | ForEach-Object {
  Assert-FileNotContains -Path $_ -Pattern "Submitted to ICIP|Under review" -Message "Publication status should not use the outdated ICIP submission or unconfirmed review status"
}
Assert-FileContains -Path "awards.md" -Pattern "Challenge Cup" -Message "Awards page should include Challenge Cup recognition"
Assert-FileContains -Path "_config.yml" -Pattern "Academic website" -Message "Site description should use an academic identity"
Assert-FileContains -Path "_layouts/default.html" -Pattern "Skip to content" -Message "Default layout should provide a skip link"
Assert-FileContains -Path "_layouts/default.html" -Pattern "theme-color" -Message "Default layout should declare a theme color"
Assert-FileContains -Path "_layouts/default.html" -Pattern 'rel="canonical"' -Message "Pages should declare their canonical URL"
Assert-FileContains -Path "_config.yml" -Pattern 'url: "https://wz-wang\.com"' -Message "Site URLs should use the custom domain"
if ((Get-Content -Raw -LiteralPath "CNAME").Trim() -ne "wz-wang.com") {
  throw "CNAME should match the configured custom domain"
}
Assert-FileContains -Path "index.md" -Pattern "Sep\. 2026 \(expected\)" -Message "Graduation should remain expected until confirmed"
Assert-FileContains -Path "projects.md" -Pattern "full labeled COCO AP and repeated timing trials remain pending" -Message "Jetson benchmark limitations should remain explicit"

@("index.md", "about.markdown", "_config.yml") | ForEach-Object {
  Assert-FileNotContains -Path $_ -Pattern "Industry Track" -Message "Academic pages should not expose an industry track"
  Assert-FileNotContains -Path $_ -Pattern "job applications" -Message "Academic pages should not use job-application positioning"
  Assert-FileNotContains -Path $_ -Pattern "AI/ML researcher and builder" -Message "Academic pages should not use the old dual-track identity"
}

@("index.md", "projects.md") | ForEach-Object {
  Assert-FileNotContains -Path $_ -Pattern "CleanSlateTab|SnapPin|DailyPaper|research-writing-harness" -Message "Primary academic pages should omit unrelated product projects"
}

Assert-FileNotContains -Path "index.md" -Pattern "\p{So}" -Message "Homepage should not use symbol-style emoji icons"

$sourceCv = Get-FileHash -LiteralPath "Weizheng_Wang_CV.pdf"
$siteCv = Get-FileHash -LiteralPath "assets/CV.pdf"
if ($sourceCv.Hash -ne $siteCv.Hash) {
  throw "Both existing English CV URLs should serve the same PDF"
}
if (-not (Test-Path -LiteralPath "assets/CV-zh.pdf" -PathType Leaf)) {
  throw "The Chinese CV download should exist"
}

Write-Host "Content verification passed."
