# Sequence for Impact — Full Playbook Reference

## /define-scope

### Part 1: Define capabilities

A **capability** describes what the product must be able to do consistently and reliably to support key actions for people and systems. It is not a feature, screen, or workflow — it is something a product can do regardless of how the implementation or design changes.

**How to define capabilities:**
1. Review outcomes and gains — these clarify what capabilities are needed and prevent the list from growing too large
2. Use the journey to ask: "What does the product need to be able to do here for this action to work as intended?"
3. Apply feasibility notes to right-size each capability

**Quality criteria — a well-defined DXT capability:**
- [ ] Clearly enables at least one gain tied to a key action
- [ ] States what the product must be able to do
- [ ] Reflects known feasibility, dependencies, and constraints
- [ ] Is meaningfully different from other capabilities
- [ ] Can be explained without referencing features or UI

**Red flags:**
- Too fine-grained (sounds like a feature) → expand to the durable ability it represents
- Too broad (sounds like a platform) → narrow to a specific, bounded ability
- Duplicates another capability → merge or differentiate

### Part 2: Write epics

An **epic** describes a meaningful slice of value that advances the experience and supports key actions. At DXT, each epic is tied to a capability and explains the value it delivers, helping teams move from solution ideas to work they can actually build.

**How to define epics:**
1. For each capability, ask: "What meaningful unit of work would deliver or advance this capability?"
2. Ground in actions, gains, and outcomes to shape what value the epic delivers
3. Keep epics focused and independent — each should be a coherent slice of value

**Quality criteria — a well-defined DXT epic:**
- [ ] Advances one clear capability and does not bundle unrelated work
- [ ] Captures a meaningful slice of value for Guests, Cast, Crew, or systems
- [ ] Supports key actions and enables relevant gains
- [ ] Describes the outcomes achieved, not features, UI, or technical solutions
- [ ] Sized to be planned, built, and reviewed without locking in implementation

**Treat epics like a value pitch, not a work container.** If an epic can't be explained without listing features or tasks, it's likely too detailed or too broad.

### Output format for /define-scope
Section 1 — Capabilities table:
| Capability | Gains it enables | Key actions it supports | Feasibility notes |

Section 2 — Epics table:
| Epic Name | Capability | Value delivered | Key actions | Success looks like |

**Lifecycle Value Canvas:** Save to Section 2.2 → Scope Definition in `dxt-lifecycle-value-canvas.docx`. Render both tables as Word tables.

---

## /sequence-scope

### Defining the MVP

The **Minimum Viable Product (MVP)** is not the simplest version of the solution. It is the minimum set of capabilities that makes the experience viable, credible, and testable.

**DXT MVP criteria — the MVP capability set should:**
- [ ] **Deliver real value** — Supports the most critical actions and required gains
- [ ] **Be viable and credible** — Can reasonably work end-to-end
- [ ] **Validate what matters most** — Tests assumptions on outcomes and value, not just technical feasibility
- [ ] **Be intentionally scoped** — Clearly names included and excluded capabilities with rationale
- [ ] **Set up learning and progress** — Provides direction on what should come next and why

**Sequencing question sequence:**
1. "Which capabilities are absolutely required for the experience to work and be trustworthy at all?" → MVP candidates
2. "What could we cut from MVP and still have something meaningful to learn from?"
3. "What's the rationale for what's in and what's out?"
4. "How do the remaining capabilities sequence to balance delivery and learning?"

**Sequencing principles:**
- Start with capabilities that make the experience viable and trustworthy
- Layer in what improves and extends it over time
- The sequence should tell a clear story of how value and confidence build

### Output format for /sequence-scope
**MVP Scope:**
- MVP capability set (with rationale for each inclusion)
- Explicitly out of scope (with rationale)
- MVP success criteria: what would confirm the experience is working as intended?

**Post-MVP Sequence:**
| Release | Capabilities | Value this adds | Dependencies |

**Narrative summary:** A 2–3 sentence story of how value builds over time across releases.

**Lifecycle Value Canvas:** Save to Section 2.2 → Scope Sequencing in `dxt-lifecycle-value-canvas.docx`. Include MVP scope, post-MVP table, and narrative summary.

---

## /readiness-architecture-review

### What is the Architecture Review Board?
A formal governance checkpoint in DXT to confirm a solution is ready to move forward from an architectural and enterprise perspective. While Solution Architects and Enterprise Architecture partners lead much of the detailed preparation, the PM's role is to ensure the product intent is clear, grounded, and ready for thoughtful review.

### Your role as PM at the ARB
- Confirm that the proposed solution aligns with the experience, capabilities, and outcomes
- Ensure architectural decisions support prioritized gains and outcomes
- Acknowledge known risks, dependencies, and tradeoffs openly
- Align on readiness to proceed or understand what must change before moving forward

### What to prepare
| Element | What it covers |
|---|---|
| Opportunity and outcomes | Why this matters and what success looks like |
| Capabilities and sequencing | What the product must do and in what order |
| Feasibility constraints | Known technical constraints, dependencies, risks |
| Epics | Meaningful slices of work tied to capabilities |
| Open questions | What remains uncertain and how it will be resolved |

### How to frame the review
- Treat it as a clarity check, not a defense
- Name risks, dependencies, and tradeoffs openly — connect them to value and readiness
- Strong product leaders use the ARB to build shared confidence that the solution is worth moving forward, not just technically sound

### What the board will do
Review prepared artifacts, ask clarifying questions, may challenge assumptions or highlight gaps. At the end, you'll receive clear direction on whether the solution can move forward, needs additional approvals, or requires rework before returning.

### Readiness checklist
- [ ] Capabilities are defined and pass quality criteria
- [ ] MVP scope is clear with rationale for inclusions and exclusions
- [ ] Epics are written and connected to capabilities
- [ ] Known technical constraints, dependencies, and risks are documented
- [ ] Open questions are named with a resolution plan
- [ ] The PM can articulate the so