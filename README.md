# assets/ — where to add visuals

This folder should contain preview images and short gifs for dashboards and visualizations used in the top-level README and project READMEs.

Naming convention (used in the README):
- assets/<project-slug>-preview.svg/png  — small preview image (recommended 900x500 px)
- assets/<project-slug>-hero.svg/png     — larger hero image for project README (1200x600 px)
- assets/<project-slug>-step-1.svg/png   — optional: images referenced inside project README

Accessibility:
- Add descriptive alt text when referencing images in Markdown.
- For animated gifs keep filesize small (<= 3MB) so the repo loads quickly.

How to add images:
1. Create or export a JPG/PNG/GIF from your tool (Tableau, PowerPoint export, etc.)
2. Resize to recommended dimensions and compress.
3. Commit to the repo under assets/ following the naming convention.
4. Update the top-level README and the project's README to point at the new file and include an alt text description.

Example:
- assets/support-ticket-dashboard-preview.svg  — referenced in README as: `![Support ticket dashboard preview](assets/support-ticket-dashboard-preview.svg "Support Ticket Dashboard")`.