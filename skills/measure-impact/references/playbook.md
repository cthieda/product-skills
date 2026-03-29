# Measure Impact — Full Playbook Reference

## /analyze-results

### Grounding in outcomes, not outputs
The most common mistake in impact measurement is measuring what was built instead of what changed. Return to the outcomes defined during Clear Opportunity and ask:
- What was this work supposed to make better for Guests, Cast, Crew, or the business?
- How would we know if it worked — even without metrics?
- Which problem statements should no longer be true if this was successful?

### Defining success signals per outcome

For each outcome, identify observable evidence that would confirm it was achieved:
- If this outcome were true, what would be different about how people or systems behave?
- What would partners or leaders notice without being told to look?
- What would stop happening? What would start happening more reliably?
- What was the root cause — and what evidence would show it's been addressed?

### Connecting to DXT business value types

| Business value type | Evidence of impact |
|---|---|
| **Revenue** | Changes in Guest retention, conversion, usage frequency, or revenue protection signals |
| **Cost and Efficiency** | Reduction in manual effort, rework, escalations, or time to complete work |
| **Capacity and Throughput** | System reliability improvements, throughput increases, or reduced peak-period degradation |
| **Strategic Enablement** | Enablement of follow-on capabilities, reduced cost of future work, or new strategic options opened |

### Measurement plan structure

| Element | What to define |
|---|---|
| **What to measure** | Specific signals (quantitative metrics + qualitative observations) per outcome |
| **Where the data comes from** | Data sources, systems, or research methods needed |
| **Baseline** | Current state before the change went live |
| **Review cadence** | How often (weekly early on, monthly as it stabilizes), who participates. Schedule recurring reviews via Microsoft Teams meetings and share progress updates via a dedicated Teams channel or Outlook email to stakeholders |
| **Thresholds for action** | What evidence would prompt a decision to continue, adjust, or escalate |

### Interpreting results honestly

**If outcomes were achieved**: What made this work? Document it for future opportunities.

**If outcomes were partially achieved**: Which problem statements or gains are still unresolved? Is this a case for another iteration or a different framing?

**If outcomes were not achieved**: Return to problem framing. Did the solution address the real root cause? Were the gains the right ones?

**Warning signs of post-hoc rationalization:**
- Explaining away negative signals as "one-off" without evidence
- Counting outputs (features shipped) as outcomes
- Adjusting success criteria after seeing results
- Selecting only confirming data points

### Output format for /analyze-results

**Section 1: Results Summary**
| Outcome | Expected signal | Observed signal | Baseline | Assessment (Achieved / Partial / Not Achieved) |

**Section 2: Root Cause Revisited**
For each partially or not-achieved outcome: what does the evidence suggest about whether the root cause was addressed?

**Section 3: Key Learnings**
- What was confirmed that we already believed?
- What surprised us?
- What do we now know that we didn't before?

**Section 4: Decision**
One of:
- **Continue iterating** — Evidence suggests outcomes are being achieved; next capabilities should move forward
- **Adjust the approach** — Solution is partially working; specific changes needed to the backlog, sequencing, or experience intent
- **Shift the opportunity** — Original problem framing needs updating; return to Define the Problem or Define the Value with new insight
- **Close the opportunity** — Outcomes fully achieved; no further active investment needed

**Lifecycle Value Canvas:** Save to Section 3.2 → Results Analysis in `dxt-lifecycle-value-canvas.docx`. Include all four sections (Results Summary table, Root Cause Revisited, Key Learnings, Decision).

---

## /identify-new-opportunity

### When to use this command
Use after /analyze-results when:
- Results revealed an adjacent problem or unmet need
- Partial outcomes suggest a related opportunity worth exploring
- Partner feedback surfaced something outside the original scope
- A "not achieved" outcome requires going back to the problem framing

### Two types of output

**Type 1: New backlog items (within this opportunity)**
When the opportunity is still open and results suggest additional iterations would help:
- New or revised user stories for the next sprint
- Capability gaps identified from results
- Business rules or edge cases uncovered during delivery

**Type 2: New product opportunity (start a new lifecycle)**
When results reveal something that goes beyond the current opportunity's scope and warrants its own hypothesis, discovery, and problem definition.

### Framing a new opportunity from results

Use the discovery summary to inform a new hypothesis:
1. **What pattern in the results points to a new opportunity?**
   - A pain that persists despite what was built
   - A behavior that emerged unexpectedly
   - A partner feedback theme that wasn't in the original problem

2. **Who is experiencing it?**
   - Which people or systems are involved?
   - Is it the same population as before, or a different one?

3. **Draft a new hypothesis**
   Using the Engage Partners structure: "There may be an opportunity to improve how [people or systems] do [action] during [when] at [where]."

### Output format for /identify-new-opportunity

**Option A: New backlog items**
Jira-ready user stories and acceptance criteria (use /write-stories format from Develop Iteratively)

**Option B: New lifecycle opportunity**
```
New Opportunity Brief

Source: [What result or learning surfaced this]
Pattern observed: [What was seen in results or partner feedback]
Affected people/systems: [Who is experiencing this]
Draft hypothesis: [One or two sentences in DXT hypothesis format]
Suggested next action: [Engage Partners → Establish Hypothesis | Define the Problem → revisit root cause | etc.]
Priority signa