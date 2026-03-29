# DXT Lifecycle Value Canvas — Persistent Word Document

## Purpose

As the PM works through the DXT Product Lifecycle, every command output is appended to a single Word document called the **DXT Lifecycle Value Canvas** (`dxt-lifecycle-value-canvas.docx`). This ensures context accumulates across actions and sessions, giving the PM a comprehensive artifact they can share with partners and leadership.

## How it works

1. **First command run**: Create `dxt-lifecycle-value-canvas.docx` in the outputs folder with the full document skeleton below, populated with the current command's output. Ask the PM for the **opportunity name** to use as the document title.
2. **Subsequent commands**: Read the existing `dxt-lifecycle-value-canvas.docx` (unpack it with `python scripts/office/unpack.py dxt-lifecycle-value-canvas.docx unpacked/`), locate the relevant section, replace the placeholder or append content, then repack (`python scripts/office/pack.py unpacked/ dxt-lifecycle-value-canvas.docx --original dxt-lifecycle-value-canvas.docx`).
3. **Always display output in chat too** — the document is a persistent companion, not a replacement for conversational coaching.
4. **Read prior sections for context** — before running any command, check the Lifecycle Value Canvas for outputs from earlier actions. Use that context to inform coaching and ensure continuity.

## Creating the document (first use)

Use the `docx` npm package (`npm install -g docx`). Follow the docx skill for formatting best practices.

### Document structure

**Title page:**
- Title: "DXT Lifecycle Value Canvas — [Opportunity Name]"
- Subtitle: "Living document — updated as each lifecycle action is completed"
- PM name and date started

**Use these heading levels:**
- **Heading 1** for value anchors: Clear Opportunity, Clear Solution, Clear Outcomes
- **Heading 2** for actions: Engage Partners, Define the Problem, etc.
- **Heading 3** for command outputs: Hypothesis, Insight Plan, etc.
- **Body text** for narratives, statements, and analysis
- **Tables** for structured outputs (stakeholder maps, sprint plans, feasibility assessments, etc.)

**When a section hasn't been completed yet**, include a light gray italic placeholder paragraph: *"Not yet completed."*

**Include a date stamp** (e.g., "Last updated: March 29, 2026") under each Heading 3 when its content is populated.

### Full skeleton

```
Title: DXT Lifecycle Value Canvas — [Opportunity Name]

1. Clear Opportunity                                    [Heading 1]

  1.1 Engage Partners                                   [Heading 2]
    Hypothesis                                          [Heading 3]  ← /establish-hypothesis
    Insight Plan                                        [Heading 3]  ← /create-discovery-plan
    Stakeholder Map                                     [Heading 3]  ← /create-stakeholder-map
    Discovery Summary                                   [Heading 3]  ← /summarize-discovery

  1.2 Define the Problem                                [Heading 2]
    Impact Assessment                                   [Heading 3]  ← /assess-problem-impact
    Root Cause Validation                               [Heading 3]  ← /validate-root-cause
    Problem Statements                                  [Heading 3]  ← /create-problem-statements

  1.3 Define the Value                                  [Heading 2]
    Desired Outcomes                                    [Heading 3]  ← /identify-desired-outcomes
    Value Proposition                                   [Heading 3]  ← /evaluate-value-proposition
    Opportunity Statement                               [Heading 3]  ← /opportunity-statement

2. Clear Solution                                       [Heading 1]

  2.1 Shape Solutions                                   [Heading 2]
    Gains (Required and Desired)                        [Heading 3]  ← /identify-goals
    Product Requirements Document                       [Heading 3]  ← /create-prd (summary; full PRD is standalone .docx)
    Experience Principles                               [Heading 3]  ← /experience-principles
    Product Experience Review Readiness                 [Heading 3]  ← /readiness-experience-review
    Concept Greenlight Readiness                        [Heading 3]  ← /readiness-concept-greenlight

  2.2 Sequence for Impact                               [Heading 2]
    Scope Definition                                    [Heading 3]  ← /define-scope
    Scope Sequencing                                    [Heading 3]  ← /sequence-scope
    Architecture Review Readiness                       [Heading 3]  ← /readiness-architecture-review

  2.3 Plan for Delivery                                 [Heading 2]
    Outcome Roadmap                                     [Heading 3]  ← /outcome-roadmap
    Delivery Estimation                                 [Heading 3]  ← /delivery-estimation
    Estimate Greenlight Readiness                       [Heading 3]  ← /readiness-estimate-greenlight

3. Clear Outcomes                                       [Heading 1]

  3.1 Develop Iteratively                               [Heading 2]
    User Stories                                        [Heading 3]  ← /write-stories (append each batch)
    Sprint Plans                                        [Heading 3]  ← /plan-sprint (append each sprint)
    Release Notes                                       [Heading 3]  ← /release-notes (append each release)
    Retrospectives                                      [Heading 3]  ← /retro (append each retro)

  3.2 Measure Impact                                    [Heading 2]
    Results Analysis                                    [Heading 3]  ← /analyze-results
    New Opportunities                                   [Heading 3]  ← /identify-new-opportunity
```

## Updating the document

When updating an existing Lifecycle Value Canvas:

1. **Unpack**: `python scripts/office/unpack.py dxt-lifecycle-value-canvas.docx unpacked/`
2. **Read existing content**: Check what prior sections contain — use this context to ensure continuity (e.g., reference problem statements when writing gains, reference outcomes when analyzing results)
3. **Find the relevant Heading 3** in `unpacked/word/document.xml`
4. **Replace the placeholder** paragraph (the italic "Not yet completed." text) with the actual output content, OR **append** after existing content if the section already has entries (this is common in Section 3.1 — Develop Iteratively — where multiple sprints, retros, and story batches accumulate)
5. **Add the date stamp** below the heading
6. **Repack**: `python scripts/office/pack.py unpacked/ dxt-lifecycle-value-canvas.docx --original dxt-lifecycle-value-canvas.docx`

## Section-specific guidance

### Sections that replace (one output per command)
Most sections: Hypothesis, Insight Plan, Stakeholder Map, Discovery Summary, Impact Assessment, Root Cause Validation, Problem Statements, Desired Outcomes, Value Proposition, Opportunity Statement, Gains, Experience Principles, Scope Definition, Scope Sequencing, Outcome Roadmap, Delivery Estimation, Results Analysis, New Opportunities, and all Readiness sections.

When running the same command again, replace the previous output (the PM is refining).

### Sections that append (multiple entries over time)
- **User Stories** — each `/write-stories` batch is appended with a date header
- **Sprint Plans** — each `/plan-sprint` is appended (Sprint 1, Sprint 2, etc.)
- **Release Notes** — each `/release-notes` is appended with version/date
- **Retrospectives** — each `/retro` is appended with sprint number/date

Use a Heading 4 or bold date separator between entries.

### PRD section (special case)
The `/create-prd` command produces a standalone `.docx` file for formal reviews. In the Lifecycle Value Canvas, include a brief summary (opportunity statement, key requirements, experience intent overview) and note: "Full PRD available as a separate document."

## Important notes

- The Lifecycle Value Canvas is a **living context artifact** — it captures the PM's journey through the lifecycle so that each subsequent action builds on what came before.
- When coaching, **always check the Lifecycle Value Canvas first** for outputs from earlier actions. Reference them explicitly (e.g., "Based on the problem statements you defined earlier...").
- Use Word tables for structured outputs (stakeholder maps, feasibility assessments, sprint plans, etc.) and body text for narratives and statements.
- Follow the docx skill formatting guidance: US Letter page size, Arial font, proper heading styles, proper table formatting with DXA widths.
