# Academic Homepage Specification

## Goal

Present Weizheng Wang's profile as a concise academic homepage for prospective supervisors, collaborators, and research reviewers. The site remains a lightweight, dependency-free Jekyll site whose content is grounded in the current CV.

## Information Architecture

The homepage is a selected academic index rather than a complete CV or a dual research/industry landing page.

- Lead with name, portrait, current degree, research summary, interests, and direct contact links.
- Show exactly three selected publications, three updates, three research experiences, two education entries, and three selected honors.
- Link each collection to its complete content page instead of appending new homepage entries.
- Keep `/about/` and `/projects/` available for existing links; use `/projects/` as the Research Experience page.
- Use primary navigation for Home, Publications, Experience, Awards, and CV.

## Academic Content

- Content source: the English complete CV (`resume.tex`, `resume/`, `resume.pdf`) and Chinese PDF in `D:\Code\Latex\Awesome_CV`, synchronized September 2026. The upstream `cv.tex` is not a personal CV.
- Selected publications prioritize first-author and co-first-author work, with first-listed authorship first: TRIM and When Retrieval Is Not Binding (both submitted to IEEE ICASSP 2027), followed by the co-first-authored IEEE ICIP 2026 thermal detection paper. Mark equal contributions and distinguish submitted manuscripts from peer-reviewed publications.
- Group publications by year in descending order, keeping submission status on each manuscript. Use the submission year (2026) for ICASSP 2027 manuscripts, not the conference edition. Within a year, preserve CV order when precise dates are unavailable; keep patents separate.
- The publications page includes all six submitted manuscripts and four peer-reviewed papers in the CV, plus the two earlier papers on Improved YOLOv11 and Ordos mine monitoring retained at the owner's request. Preserve older awards as well.
- Selected experience: Zayed University/MulRobBench, Huawei MindSpore/MindNLP, and Automatic Inspection and Rescue Based on Drone Nest. Keep Baiyangdian on the complete experience page, alongside collaborative research and selected research software.
- Research positioning: multimodal UAV decision evaluation, visual episodic memory, efficient computer vision, structured pruning, and edge deployment.
- Keep September 2026 graduation marked as expected until degree completion is confirmed. Preserve project participation versus leadership and the stated limits of software benchmarks.
- Non-academic product projects, job-application language, recruiter-facing technical-stack summaries, and an Industry Track do not belong in the primary academic path.

## Visual Contract

- Use a white background, dark neutral text, light rules, and one blue link color.
- Use typography, spacing, and horizontal rules for hierarchy; do not use cards, shadows, gradients, badge-like tags, or large marketing headlines.
- Use a 2:1 desktop index and a priority-ordered single column on mobile.
- Keep the homepage within approximately 2.5 viewports at 1440×1000 and 4.5 viewports at 390×844.
- Preserve visible keyboard focus, semantic headings, a skip link, explicit image dimensions, and layouts without horizontal overflow.

## Maintenance Rule

Homepage collections have fixed capacities. When adding a stronger or newer item, replace the least relevant existing preview and keep the complete record on the corresponding content page.

Use `https://wz-wang.com` as the canonical origin and `wz-wang.com` in `CNAME`. Offer English and Chinese CV downloads; keep the existing English PDF URLs working. Exclude maintenance documentation, scripts, and temporary artifacts from the built site.

## Verification

- Run the repository content verification script and Jekyll build.
- Inspect Home, About, Publications, Research Experience, and Awards at desktop, tablet, and mobile widths.
- Confirm page-length targets, working CV/internal links, visible keyboard focus, and no overlap or horizontal overflow.
