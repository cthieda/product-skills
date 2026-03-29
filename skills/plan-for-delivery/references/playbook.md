# Plan for Delivery — Full Playbook Reference

## /outcome-roadmap

### What is an outcome roadmap?
An outcome roadmap translates the sequenced capabilities and epics into a strategic view of how value will be delivered over time. Unlike a feature roadmap, it leads with the outcomes each phase delivers — not the features — so leadership and partners understand the intent behind the sequencing.

### Structure of an outcome roadmap

**Now (MVP)**
- Primary outcomes this release addresses
- Capabilities included
- Key epics
- What teams will be able to learn from this release

**Next (Post-MVP Release 1)**
- Outcomes this release advances
- Capabilities added
- Key epics
- What confidence this builds on MVP learnings

**Later (Post-MVP Release 2+)**
- Outcomes this phase targets
- Capabilities and epics (at a higher level — detail will emerge from learning)
- Dependencies that must resolve before this begins

### Format guidance
Produce the roadmap as a visual table or tiered layout (Now / Next / Later). Each phase leads with the outcome it delivers, not the features it contains.

Beneath the roadmap, include:
- **Sequencing rationale**: 2–3 sentences explaining why this order builds confidence and value appropriately
- **Key dependencies**: what must be true between phases for sequencing to hold
- **Assumptions**: what the roadmap assumes about scope, resources, or external conditions

### Output format
Produce as a Confluence-ready markdown table with the structure above. Each phase row: Timeframe | Outcomes delivered | Capabilities | Key epics | Learning intent

**Lifecycle Value Canvas:** Save to Section 2.3 → Outcome Roadmap in `dxt-lifecycle-value-canvas.docx`. Render the Now/Next/Later roadmap as a Word table.

---

## /delivery-estimation

### Part 1: Surface business rules

Business rules often sit just below the surface — easy to overlook until delivery is underway. Identify and document rules across three categories:

**Eligibility, Permissions, and Access**
Define who can use something, when, where, and under what conditions (roles, entitlements, access limits).
- Why it matters: surfaces hidden scope, edge cases, and unexpected delivery effort

**Decision Logic and Validation**
How the product decides what happens next: branching logic, calculations, validations, defaults, exceptions.
- Why it matters: helps spot complexity that could slow delivery and gives teams clearer inputs for estimating and testing

**Policy, Compliance, and Regulatory Constraints**
Legal, safety, security, financial, or operational requirements from internal policy, external regulation, or platform standards.
- Why it matters: prevents rework, protects Guests, supports Cast and Crew, aligns delivery with business requirements

**Exploration prompts:**
- "Who can use this? Under what conditions? What happens when those conditions aren't met?"
- "What does the product decide here? What rules govern that decision?"
- "Are there legal, safety, financial, or operational constraints we need to account for?"
- "What happens when things go wrong or fall outside the norm?"

**Business rules output format:**
| Rule | Category | Description | Known / Assumed / Open | Impact on delivery |

### Part 2: Define features

Features describe the specific, user-facing implementation of capabilities. They capture how people or systems use product capabilities.

**Capability vs. Feature:**
- Capability: "Support mobile ordering" → Feature: "Save favorite festival booths"
- Capability: "Enable real-time updates" → Feature: "Notify Guests when wait time adjusts"

**Quality criteria — a well-defined DXT feature:**
- [ ] References a defined outcome and capability
- [ ] Traces back to problem statements and identified pain points
- [ ] Captures what the people or system can do or experience differently
- [ ] Feasible to deliver given known constraints and dependencies
- [ ] Small and clear enough to prioritize, build, and validate

**Red flags:**
- Feature exists without tracing to a gain or outcome → challenge its inclusion
- Feature is too large to estimate or build in a single sprint → break it down
- Feature describes UI or implementation → reframe as what the person can do

**Features output format — Jira-ready:**
```
EPIC: [Epic name]
  Capability: [Capability this epic advances]
  Value: [Outcome this epic delivers]

  FEATURE: [Feature name]
    Description: [What the person or system can do differently]
    Traces to: [Problem statement | Pain point | Gain]
    Feasibility notes: [Constraints or dependencies]
```

### Part 3: Estimation conversation guide

Estimation is a continuous dialogue that builds confidence as understanding deepens.

**What project managers ensure:**
| PM ensures | This helps you |
|---|---|
| Estimates reflect delivery effort and technical complexity | Validate whether current scope and MVP are realistic |
| Estimates align to agreed scope and surface assumptions | Get signals where scope needs sharpening |
| Estimates influence resource needs and timelines | Make informed tradeoffs about sequencing |
| Estimates capture risks, dependencies, and changes to cost | Proactively address risk before it becomes delay |

**Treat early estimates as signals, not answers.** Listen for what they reveal about risk, assumptions, and confidence — then decide what that means for scope, sequencing, or outcomes.

**Lifecycle Value Canvas:** Save to Section 2.3 → Delivery Estimation in `dxt-lifecycle-value-canvas.docx`. Include the business rules table, features in Jira-ready format, and estimation conversation summary.

---

## /readiness-estimate-greenlight

### What is an Estimate Greenlight Review?
A leadership alignment checkpoint to confirm delivery scope and estimates are clear and responsible enough to proceed to backlog preparation and team planning.

### What to prepare
- Epics and features included in MVP scope
- Estimate basis and key assumptions
- Known risks, dependencies, and constraints
- What's explicitly out of scope and why
- Business rules that have been surfaced
- What you would adjust if the estimate is above or below expectations

### Tradeoff preparation
Be ready to answer:
- "If a leader asks why this feature is in scope, what's the answer grounded in value?"
- "What would you cut first if you needed to reduce scope? What would you never cut?"
- "What are the top two things that could delay delivery, and what's the mitigation?"

### Readiness checklist
- [ ] Epics and features are defined and pass quality criteria
- [ ] Business rules are surfaced across all three categories
- [ ] Estimates have been initiated with project manager and engineering leads
- [ ] Known risks, dependencies, and constraints are documented
- [ ] In-scope and out-of-scope are explicit and tied to value rationale
- [ ] The PM can articulate the tradeoff position clearly

### After the Estimate Greenlight Review

Prepare the backlog with user stories and acceptance criteria.

**User story quality criteria (DXT):**
- [ ] Focuses on one person or system and one action
- [ ] Expresses an outcome that is clear and easy to explain out loud
- [ ] Includes documented dependencies, constraints, and assumptions
- [ ] Could be picked up for development without extra explanation

**User story format**: "As a [person/system], I need to [action] so that [outcome]."

**Acceptance criteria quality criteria (DXT):**
- [ ] Are observable, unambiguous, and realistic
- [ ] Include edge cases and constraints
- [ ] Help teams determine when they're "done" with confidence
- [ ] Support a consistent understanding across teams

**Acceptance criteria format**: Given/When/Then, or a numbered checklist of conditions that must be true.

**Jira-ready output format:**
```
EPIC: [Epic name]
  Capability: [Capability this epic advances]
  Value: [Outcome this epic delivers]

  STORY: [Story title]
    As a [person/system], I need to [action] so that [outcome].
    Dependencies/Constraints: [List any]
    Acceptance Criteria:
    1. Given [condition], when [action], then [expected result]
    2. Given [condition], when [action], then [expected result]
    3. [Ed