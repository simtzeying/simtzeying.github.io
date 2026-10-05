# FET STEM Outreach

Static page for GitHub Pages. It reads `data/outreach.xlsx` in the browser, so there is no build step.

## Publish
1. Create a GitHub repository and upload everything in this folder (keep the `data/` and `vendor/` folders).
2. Settings > Pages > Deploy from a branch > `main` / root.
3. The site appears at `https://<user>.github.io/<repo>/`.

## Yearly update
Replace `data/outreach.xlsx` with the new file (same name) and commit. The newest year becomes the default view automatically.
To check it first, preview locally (below).

## Preview on your computer
Opening `index.html` directly does not work, because browsers block a page from reading the spreadsheet that way. Instead:
- Mac: double-click `preview.command` (the first time, right-click > Open).
- Windows: double-click `preview.bat`.
- Either needs Python 3 installed. The page opens at http://localhost:8000. Close the window to stop it.

## Spreadsheet rules
- One sheet per year, or all years in one sheet. The year comes from the Date column, not the sheet name.
- Headers used (exact text): `Date`, `School`, `Workshop Name`, `Category`, `Discipline`, `Pax`, `Form`, `Time`, `Venue`, `Rating`.
- Other columns are ignored. Rows without a Date or Workshop Name are skipped.
- Blank cells are fine. They show as a dash, and totals count only what was recorded.
- "Mechanical" and "Mechanical / CAD" are merged into one discipline.
- New categories and disciplines appear automatically. Add a "Teacher training" category when you start recording it.

## Privacy
In a public repository, anyone can download `data/outreach.xlsx`. The page does not display staff names, student helper names or per-session ratings, but the file still contains them if those columns are present.
Delete the `Handled By`, `Student Helpers` and `Rating` columns from the copy you commit if you do not want them public. (Ratings are used only for the average, so keep that column if you want the average shown.)

## Logo
`assets/logo.png` is the horizontal faculty logo. Replace the file to change it.

## Edit wording
Contact email, category descriptions and the teacher-training text are at the top of the script and in the HTML of `index.html`.
