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

- Selected publications: the ICIP 2026 under-review submission, the 2025 Engineering Research Express paper, and the 2024 RAIIC paper.
- Selected experience: Huawei MindSpore/MindNLP, Automatic Inspection and Rescue Based on Drone Nest, and the Baiyangdian Ecological IoT Monitoring System.
- Research positioning: computer vision, multimodal learning, UAV perception, edge intelligence, infrared-visible perception, and natural language processing.
- Non-academic product projects, job-application language, recruiter-facing technical-stack summaries, and an Industry Track do not belong in the primary academic path.

## Visual Contract

- Use a white background, dark neutral text, light rules, and one blue link color.
- Use typography, spacing, and horizontal rules for hierarchy; do not use cards, shadows, gradients, badge-like tags, or large marketing headlines.
- Use a 2:1 desktop index and a priority-ordered single column on mobile.
- Keep the homepage within approximately 2.5 viewports at 1440×1000 and 4.5 viewports at 390×844.
- Preserve visible keyboard focus, semantic headings, a skip link, explicit image dimensions, and layouts without horizontal overflow.

## Maintenance Rule

Homepage collections have fixed capacities. When adding a stronger or newer item, replace the least relevant existing preview and keep the complete record on the corresponding content page.

## Verification

- Run the repository content verification script and Jekyll build.
- Inspect Home, About, Publications, Research Experience, and Awards at desktop, tablet, and mobile widths.
- Confirm page-length targets, working CV/internal links, visible keyboard focus, and no overlap or horizontal overflow.
