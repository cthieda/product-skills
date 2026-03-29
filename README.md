# DXT Product Lifecycle Plugin

**DXT Center for Product Excellence**

This plugin encodes the DXT Product Lifecycle as a set of AI-powered coaching skills — one skill per action, each with targeted commands for the specific tasks product managers do within that action.

---

## What this plugin does

The DXT Product Lifecycle is organized into three value anchors. This plugin gives product managers a DXT Product Coach for every step:

### Clear Opportunity
Understand the problem before committing to a solution.

| Skill | Commands |
|-------|----------|
| **Engage Partners** | `/establish-hypothesis`, `/create-discovery-plan`, `/create-stakeholder-map`, `/summarize-discovery` |
| **Define the Problem** | `/assess-problem-impact`, `/validate-root-cause`, `/create-problem-statements` |
| **Define the Value** | `/identify-desired-outcomes`, `/evaluate-value-proposition`, `/opportunity-statement` |

### Clear Solution
Define and validate the right solution before building.

| Skill | Commands |
|-------|----------|
| **Shape Solutions** | `/identify-goals`, `/create-prd`, `/experience-principles`, `/readiness-experience-review`, `/readiness-concept-greenlight` |
| **Sequence for Impact** | `/define-scope`, `/sequence-scope`, `/readiness-architecture-review` |
| **Plan for Delivery** | `/outcome-roadmap`, `/delivery-estimation`, `/readiness-estimate-greenlight` |

### Clear Outcomes
Deliver, learn, and decide what comes next.

| Skill | Commands |
|-------|----------|
| **Develop Iteratively** | `/write-stories`, `/plan-sprint`, `/release-notes`, `/retro` |
| **Measure Impact** | `/analyze-results`, `/identify-new-opportunity` |

---

## How to use this plugin

**Activate a skill** by describing what you're working on. Say something like:
- "I'm trying to establish a hypothesis for my opportunity" → activates Engage Partners
- "Help me write user stories for this epic" → activates Develop Iteratively
- "I need to analyze results from our last release" → activates Measure Impact

**Run a command** by typing it directly, for example:
- `/establish-hypothesis` — drafts and evaluates a DXT-standard hypothesis
- `/create-prd` — generates a structured PRD
- `/write-stories` — creates INVEST-quality user stories with Jira-ready acceptance criteria
- `/analyze-results` — evaluates outcomes against expected signals

**Each skill acts as a DXT Product Coach** — it knows the full playbook for that action and will ask you the right questions, surface the right frameworks, and produce the right outputs.

---

## Lifecycle Value Canvas

Every command in this plugin saves its output to a persistent Word document called the **DXT Lifecycle Value Canvas** (`dxt-lifecycle-value-canvas.docx`). As the PM works through each lifecycle action, the canvas accumulates context — so each subsequent skill builds on everything that came before. The canvas mirrors the lifecycle structure (Clear Opportunity → Clear Solution → Clear Outcomes) and serves as a comprehensive, shareable artifact for partners and leadership.

---

## Output formats

| Output type | Format | Used by |
|-------------|--------|---------|
| Lifecycle Value Canvas | Word (.docx) — built progressively across all actions | All skills |
| User stories, epics, ACs | Jira-ready structured blocks | Write Stories, Define Scope, Plan for Delivery |
| Roadmaps, insight plans | Confluence markdown tables | Outcome Roadmap, Discovery Plan |
| Formal review documents | Word (.docx) for leadership reviews, Confluence for day-to-day collaboration | PRD, Experience Review, Concept Greenlight, Architecture Review |
| Release notes & updates | Confluence page, Outlook email, or