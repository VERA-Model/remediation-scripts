# 📘 VERA Remediation Docs

Welcome to the internal documentation for this remediation script repository.

---

## 📁 Folder Structure

| Folder         | Purpose |
|----------------|---------|
| `/scripts/`    | Live remediation scripts used by GPT |
| `/templates/`  | Starter templates for new CVEs or controls |
| `/tools/`      | (Optional) Utility scripts to support automation |
| `/docs/`       | Human-readable usage, contribution, and policy docs |
| `index.json`   | Machine-readable script catalog for GPT and automation |

---

## ✍️ Contributing a New Script

1. Choose a template from `/templates/`
2. Create a file in `/scripts/` with format:
   - `CVE-YYYY-NNNN.ps1` or `.sh`
   - `cis-<control>-<name>.ps1`
   - `azure-...`, `aws-...`, `gpo-...`, etc.
3. Commit with clear message
4. GitHub Actions will automatically update `index.json`

---

## 🔧 GPT + GitHub Integration

This repo is:
- Integrated with a Custom GPT via `getScriptIndex` and `getScriptContent`
- Served via GitHub Pages:
  [https://vera-model.github.io/remediation-scripts/index.json](https://vera-model.github.io/remediation-scripts/index.json)
- Designed to support API-style retrieval by CVE ID, compliance name, or filename

---

Questions? Ask VERA or contribute via pull request!
