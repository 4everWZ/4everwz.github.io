# [Weizheng Wang — Academic Website](https://wz-wang.com/)

Jekyll academic homepage hosted on GitHub Pages at **wz-wang.com**.

Content follows the complete CV in `D:\Code\Latex\Awesome_CV` (`resume.tex`, `resume/`, and `resume.pdf`; Chinese version: `resume_zh.pdf`). The upstream `cv.tex` is a template, not a personal CV. Earlier publications and awards on this site are retained alongside the current CV entries.

- English CV: `assets/CV.pdf`; `Weizheng_Wang_CV.pdf` preserves the existing download URL.
- Chinese CV: `assets/CV-zh.pdf`.
- Homepage structure and content rules: [academic homepage specification](docs/specs/academic-homepage-redesign.md).
- Custom domain: `_config.yml` and `CNAME` must agree.

Validate content and build using the locked Ruby dependencies:

```powershell
pwsh -File scripts/verify-site-content.ps1
```

```sh
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll build
bundle exec jekyll serve
```

On Windows, Ruby/Bundler can run in WSL from `/mnt/d/Code/4everwz.github.io`. GitHub Actions builds and deploys pushes to `main` using `.github/workflows/jekyll.yml`.
