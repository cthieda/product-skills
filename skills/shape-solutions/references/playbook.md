# Shape Solutions — Full Playbook Reference

## /identify-goals

### What are gains?
Gains clarify what people and systems require for a key action to work, and what improves confidence, ease, or satisfaction when it does. By naming gains explicitly, you turn expectations into clear, foundational requirements that inform what a solution must do.

### Two types of gains

| Type | Definition | Questions |
|---|---|---|
| **Required Gains** | What must be true for the action to be completed. They become the foundational requirements the solution must reliably meet. | What must be true for this to work every time? If this is missing, does the action fail, break, or create risk? |
| **Desired Gains** | What makes the action easier or better. These guide how the solution should perform, feel, and differentiate in experience. | What would reduce effort, stress, or second-guessing? What would build trust or delight, even if the action already works? |

### Gain statement structure
"[People/system] supports [gain] to [action] and achieve [outcome]."

### Process
For each disrupted action identified in Define the Problem:
1. Ask: "What must be true for this action to work every time?" → Required Gains
2. Ask: "What would make this action easier or better?" → Desired Gains
3. Write gain statements in the structure above
4. Prioritize: which Required Gains are most critical? Which Desired Gains would most meaningfully differentiate?

### Red flags
- Gain describes a feature or specific UI element → reframe as what must be enabled
- Desired Gain is vague ("feel easy") → push for what specifically changes about effort or confidence
- Too many gains → prioritize ruthlessly against outcomes

### Output format
For each key action:
- Required Gains (bulleted, in statement format)
- Desired Gains (bulleted, in statement format)
- Priority ranking with brief rationale

**Lifecycle Value Canvas:** Save to Section 2.1 → Gains (Required and Desired) in `dxt-lifecycle-value-canvas.docx`.

---

## /create-prd

### What this command produces
A Product Requirements Document (.docx) that captures the full Shape Solutions output in a format suitable for partner alignment and DXT review forums.

### PRD structure
Generate a .docx file with the following sections:

**1. Opportunity Summary**
- Opportunity Statement (from Define the Value)
- Problem Statements (from Define the Problem)
- Outcomes (from Define the Value)

**2. Desired Gains**
For each key action: Required Gains table, Desired Gains table

**3. Feasibility Assessment**
| Gain | Experience Feasibility | Technology Feasibility | Business Feasibility | Constraints / Assumptions / Open Questions |

**4. High-Level Requirements**
Numbered list of requirements, each anchored to outcomes, accounting for feasibility, expressing intent, and guiding decisions.

**5. Experience Intent**
For each key action: Know Me Enough intent, Keep It Simple intent, Inspire Me intent

**6. Open Questions and Risks**
Remaining open questions, known risks, and dependencies

### Feasibility lenses to apply

| Lens | Focus | Key questions |
|---|---|---|
| **Experience** | Whether a gain can be realistically delivered for Guests, Cast, or Crew in real world conditions | Does this require new work or decisions from Cast or Crew? Does it rely on perfect behavior or timing? |
| **Technology** | Whether existing systems, data, infrastructure, and platforms can reliably support the gain | What systems, data, or integrations must already exist? Where are there dependencies or reliability risks? |
| **Business** | Whether delivering the gain is sustainable given cost, scale, timing, and operational impact | What cost, scale, or operational constraints apply? Does seasonality limit viability? |

### Requirements quality criteria
- [ ] Anchors to outcomes, value, and gains
- [ ] Accounts for feasibility findings
- [ ] Expresses intent (holds true even if solution approach changes)
- [ ] Guides decisions and tradeoffs

**Requirements are decision tests, not instructions.** Ask: "If the engineering team took a completely different technical approach, would this requirement still hold?"

### Output
**For formal reviews and leadership alignment:** Save as .docx to outputs folder. Use the docx skill for formatting.
**For day-to-day collaboration and partner alignment:** Format as a Confluence page with the same structure above, suitable for pasting directly into Confluence.

**Lifecycle Value Canvas:** Save a brief summary to Section 2.1 → Product Requirements Document in `dxt-lifecycle-value-canvas.docx`. Include the opportunity statement, key requirements, and experience intent overview. Note: "Full PRD available as a separate document (`prd.docx`)."

---

## /experience-principles

### The three Digital Guest Experience Principles

At DXT, product leaders design the experience by explicitly grounding decisions in these principles.

| Principle | Definition | Questions to ask |
|---|---|---|
| **Know Me Enough** | Recognizes the person or situation to avoid repetition, re-explanation, or unnecessary effort | What context should the experience recognize or remember? What should not require re-entry or re-explanation if working well? |
| **Keep It Simple** | Minimizes steps, decisions, and effort so the action feels clear, intuitive, and easy to complete | Where can steps, decisions, or effort be reduced or removed? What should feel obvious instead of requiring guesswork? |
| **Inspire Me** | Builds confidence and trust while creating moments that feel thoughtful, joyful, and distinctly Disney | Where should the experience create reassurance? How should success feel when the action is completed? |

### Process
For each key action in the solution:
1. Ask through Know Me Enough: "How does this experience demonstrate it knows the person or situation?"
2. Ask through Keep It Simple: "Where does effort or guesswork go away?"
3. Ask through Inspire Me: "Where does confidence or delight show up?"
4. Articulate experience intent statements — not design specs, but clear intent about how it should feel

### Red flags
- Conversation shifts to specific screens or UI → redirect back to experience intent
- Intent is vague ("feel magical") → push for what specifically the person recognizes or doesn't have to do
- One principle is missing → every key action should be evaluated through all three

### Output format
Experience intent table per key action:
| Action | Know Me Enough Intent | Keep It Simple Intent | Inspire Me Intent |

**Lifecycle Value Canvas:** Save to Section 2.1 → Experience Principles in `dxt-lifecycle-value-canvas.docx`. Render as a Word table.

---

## /readiness-experience-review

### What is a Product Experience Review?
Required for **any change to the Guest, Cast, or Crew experience beyond content, pricing, or copy**. Led by Gary Daniels, SVP International Technology, and the DXT leadership team.

### What to prepare
| Element | How to illustrate it |
|---|---|
| A Clear Opportunity | Problem Statements, Opportunity Statement |
| Alignment to Digital Guest Experience Principles | Experience intent by principle, journey maps, partner insights |
| The solution approach | High-level requirements, experience intent, gains |

### How to frame the review
- Lead with the journey: what is the Guest, Cast, or Crew trying to do?
- Show where friction exists today (problem statements + insights)
- Explain how the experience meaningfully improves end-to-end
- Use the principles to explain *why*, not just *what*
- Frame it as a shared walkthrough, not a presentation of artifacts

### Readiness checklist
- [ ] Problem statements are clear and grounded in insight
- [ ] Opportunity statement is written and passes all five criteria
- [ ] Experience intent is articulated through all three principles for each key action
- [ ] High-level requirements are written and connected to gains and outcomes
- [ ] Known risks, constraints, and open questions are documented

### Output format for /readiness-experience-review
A readiness assessment: checklist with READY/NEEDS WORK status per item, plus a narrative framing guide for how to tell the story in the review.

**Lifecycle Value Canvas:** Save to Section 2.1 → Product Experience Review Readiness in `dxt-lifecycle-value-canvas.docx`.

---

## /readiness-concept-greenlight

### What is a Concept Greenlight Review?
A leadership alignment checkpoint to confirm the solution concept is ready to move forward toward sequencing and planning.

### What to prepare
- The opportunity and why it matters (opportunity statement)
- The solution concept (gains, requirements, experience intent)
- Known risks, dependencies, and tradeoffs — named openly
- A clear position on readiness: what's known, what's assumed, what's open

### How to frame