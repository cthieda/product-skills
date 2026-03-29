# Develop Iteratively — Full Playbook Reference

## /write-stories

### INVEST criteria for user stories
Each story should be:
- **I**ndependent — can be developed and delivered without depending on another story
- **N**egotiable — details can be discussed and refined with the team
- **V**aluable — delivers value to a user, system, or the business
- **E**stimable — the team can roughly estimate the effort involved
- **S**mall — can be completed within a single sprint
- **T**estable — there are clear, observable acceptance criteria

### DXT user story quality criteria
- [ ] Focuses on one person or system and one action
- [ ] Expresses an outcome that is clear and easy to explain out loud
- [ ] Includes documented dependencies, constraints, and assumptions
- [ ] Could be picked up for development without extra explanation

**User story format**: "As a [person/system], I need to [action] so that [outcome]."

### DXT acceptance criteria quality criteria
- [ ] Observable, unambiguous, and realistic
- [ ] Include edge cases and constraints
- [ ] Help teams determine when they're "done" with confidence
- [ ] Support a consistent understanding across teams

**Acceptance criteria formats:**
- Given/When/Then: "Given [condition], when [action], then [expected result]"
- Checklist: Numbered list of conditions that must all be true

### Red flags in user stories
- "As a user, I want…" → who specifically? What role?
- Story bundles multiple actions → split it
- No acceptance criteria → incomplete
- Story can't be completed in one sprint → break it down
- Acceptance criteria say "should" instead of "must" → ambiguous

### Output format — Jira-ready

```
EPIC: [Epic name]
  Capability: [Capability this epic advances]
  Value: [Outcome this epic delivers]

  STORY: [Story title]
    As a [person/system], I need to [action] so that [outcome].

    Description:
    [1–2 sentences of context: who is this, what situation are they in, why does this matter]

    Dependencies/Constraints:
    - [Any dependencies on other stories, systems, or business rules]
    - [Known constraints from feasibility assessment]

    Acceptance Criteria:
    1. Given [condition], when [action], then [expected result]
    2. Given [condition], when [action], then [expected result]
    3. [Edge case: given [condition], when [action], then [expected result]]
    4. [Negative case: given [condition], when [action], then [expected result]]
```

**Lifecycle Value Canvas:** Append to Section 3.1 → User Stories in `dxt-lifecycle-value-canvas.docx`. Add a date header (e.g., "Stories — March 29, 2026") before each batch. Do not replace previous batches.

---

## /plan-sprint

### Sprint planning inputs needed
Before planning, confirm:
- Team capacity this sprint (in story points or days, minus PTO, ceremonies, and other commitments)
- Velocity reference (average story points completed in recent sprints)
- Prioritized backlog with stories that are "ready" (written, accepted, estimated)
- Any carry-over from the previous sprint

### Sprint planning process

**Step 1: Capacity check**
- How many story points or days does the team have available this sprint?
- What is the team's average velocity?
- Are there known risks to capacity (onboarding, incidents, holidays)?

**Step 2: Story selection**
- Start from the top of the prioritized backlog
- Pull in stories until capacity is reached (target ~80% to leave room for the unexpected)
- Ask for each story: "Is this story ready? Are acceptance criteria clear and agreed?"
- Flag any story with unresolved dependencies

**Step 3: Dependency mapping**
For each selected story:
- Does it depend on another story being completed first?
- Does it depend on a system, team, or decision outside this team?
- What's the mitigation if the dependency is delayed?

**Step 4: Risk identification**
- What are the top 1–2 risks to completing this sprint as planned?
- For each risk: likelihood (High / Medium / Low), impact, and mitigation

**Step 5: Sprint goal**
Write one clear sprint goal sentence: "By the end of this sprint, [outcome the team is working toward], so that [value or learning this enables]."

### Output format for /plan-sprint
```
Sprint Goal: [One sentence]

Capacity: [X story points / days] | Velocity reference: [X sp/sprint avg]

Selected Stories:
| Story | Points | Owner | Dependencies | Readiness |
|-------|--------|-------|--------------|-----------|

Dependency Map:
- [Story A] depends on [Story B / System X / Decision Y] — Mitigation: [...]

Top Risks:
| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|

Excluded (next sprint candidates):
- [Stories that didn't make the cut, with brief note on why]
```

**Lifecycle Value Canvas:** Append to Section 3.1 → Sprint Plans in `dxt-lifecycle-value-canvas.docx`. Add a header (e.g., "Sprint 1 — March 29, 2026") before each plan. Do not replace previous sprints.

---

## /release-notes

### What this command produces
User-facing release notes from tickets, PRDs, changelogs, or a list of shipped items. Creates clear, engaging summaries organized by category.

### Inputs to provide
- List of shipped stories, epics, or tickets (paste from Jira or describe what shipped)
- Target audience (Guests / Cast / Crew / internal teams)
- Tone (formal / conversational / technical)
- Format preference (Confluence page / Outlook email / Microsoft Teams post / in-product notification)

### Release notes categories
Organize by:
- **New** — net-new capabilities or experiences
- **Improved** — enhancements to existing capabilities
- **Fixed** — bugs, reliability issues, or performance improvements resolved
- **Removed** — anything deprecated or retired

### Writing principles for release notes
- Lead with the benefit, not the feature: "You can now [do X] without [having to Y]"
- Use plain language the audience actually speaks
- Be specific about who benefits and in what situation
- Avoid internal jargon (epic names, ticket IDs, system names)
- Keep each item to 1–3 sentences

### Output format
```
## Release Notes — [Version / Date]

### What's New
- **[Feature name]**: [Who benefits, what's different, and why it matters. 1–3 sentences.]

### Improvements
- **[Area]**: [What's better and for whom.]

### Fixes
- [Brief description of the fix and who it affects]
```

Formatted for the specified destination (Confluence page, Outlook email, Microsoft Teams post, or plain text).

**Lifecycle Value Canvas:** Append to Section 3.1 → Release Notes in `dxt-lifecycle-value-canvas.docx`. Add a header with version/date. Do not replace previous releases.

---

## /retro

### What this command produces
A structured sprint retrospective facilitation guide — and optionally, a completed retrospective if the PM provides the team's input.

### Retrospective structure

**Format options:**
- **Start / Stop / Continue** — What should we start doing? Stop doing? Keep doing?
- **4Ls** — Liked, Learned, Lacked, Longed for
- **Mad / Sad / Glad** — Emotional temperature + action focus
- **Timeline** — Walk through the sprint day by day to surface what happened

**DXT default: Start / Stop / Continue**

### Facilitation guide

**Opening (5 min)**
Set the tone: this is a safe space for honest reflection. The goal is improvement, not blame. Remind the team of the sprint goal and whether it was achieved. Retros can be facilitated live in a Microsoft Teams meeting or asynchronously via a Teams channel thread.

**Data gathering (10–15 min)**
Each person adds items to each category (anonymously if using a digital tool, via a Teams poll or Forms surve