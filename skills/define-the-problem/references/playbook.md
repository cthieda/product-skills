# Define the Problem — Full Playbook Reference

## /assess-problem-impact

### Step 1: Identify impacted people and systems

Begin by reviewing gathered insights and noticing who is seeing, hearing, or feeling the problem.

**Directly impacted** (anchor here for problem definition):
- Who is seeing, hearing, or feeling the problem as it happens?
- Who is trying to take action when progress breaks down?
- Anchor in their experiences — they are closest to the root cause.

**Indirectly impacted** (use for context only):
- Who becomes involved after the problem occurs?
- Who has to explain, fix, recover, or mitigate the issue?
- Do not let their experiences define the problem — they explain broader consequences.

**Watch for scope creep**: If adding another impacted group significantly changes the understanding of the problem, pause and reassess — you may be describing multiple problems.

### Step 2: Identify disrupted actions

An **action** is an observable step a person or system takes to make progress toward a goal. Problems are defined through disrupted actions.

Listen for phrases like: "I'm trying to…" / "They need to…" / "We have to…"

**Quality criteria — each action should be:**
- Something a person or system **does** (not thinks or feels)
- Clear when it is done or not done
- Happening when progress slows, stops, or feels risky

**Red flag**: If it sounds like a screen interaction, it's too small. If it sounds like a business objective, it's too large.

### Step 3: Identify pain points

Pain points capture the moments where progress is blocked, effort increases, risk grows, or confidence drops.

| Category | Definition | Example |
|---|---|---|
| **Support Pains** | Uncertainty, lack of clarity, or low confidence while attempting an action | A user retries an action multiple times because there is no confirmation it worked |
| **Effort Pains** | Unexpected steps, manual workarounds, rework, or repeated attempts | A team builds a workaround spreadsheet because the primary tool is unreliable |
| **Reliability Pains** | Inconsistent or unpredictable results depending on conditions | A Guest can complete an action in some locations but fail under similar conditions elsewhere |
| **Performance Pains** | Slow, delayed, or stalled progress when attempting to complete an action | A transaction takes long enough that users assume it failed and retry |

**Pain point structure**: "When [people/systems] try to [action] under [condition], [pain points] become evident."

### Output format for /assess-problem-impact
A structured table:
- Section 1: Impacted people/systems (Direct vs. Indirect, with notes)
- Section 2: Disrupted actions list (each passing the quality criteria)
- Section 3: Pain points table (Action | Pain Type | Description | Example)

**Lifecycle Value Canvas:** Save to Section 1.2 → Impact Assessment in `dxt-lifecycle-value-canvas.docx`. Render all three sections as Word tables.

---

## /validate-root-cause

### What is a root cause?
The root cause is the underlying condition that must be true for the pain to continue. It moves you from describing what's happening to identifying what must change.

### How to find root cause candidates
1. Review all disrupted actions and pain points
2. Look for pains that repeat across multiple situations
3. Draft 2–4 potential root causes as neutral conditions (not solutions) that explain what must be true for the pain to continue

### Root cause validation test — must answer YES to all three:

| Check | Question |
|---|---|
| **Would fixing this stop the pain?** | If this condition changed, would the repeated pains mostly go away? |
| **Was it there before the pain?** | Does this condition exist before the pain occurs, not only after? |
| **Does it explain more than one pain point?** | Does this condition help explain multiple repeated pains? |

If any answer is "no" → treat as contributing context, not root cause.

### Confirming with the 5 Whys
Ask "why" starting from a repeated pain until the explanation consistently points back to the same condition or reveals a deeper one.

Example:
- Pain: Cast Members retry the handoff action multiple times
- Why? → No confirmation is shown when the handoff completes
- Why? → The system doesn't return a success state to the UI
- Why? → The API call is fire-and-forget with no callback
- Why? → The integration was built for speed, not reliability signaling
- Root cause: The integration architecture does not support reliable completion signaling

### Output format for /validate-root-cause
- Root cause candidates list (2–4 neutral condition statements)
- Validation table (each candidate × 3 checks, with YES/NO and brief rationale)
- Confirmed root cause(s) with 5 Whys chain

**Lifecycle Value Canvas:** Save to Section 1.2 → Root Cause Validation in `dxt-lifecycle-value-canvas.docx`. Include the validation table and 5 Whys chain.

---

## /create-problem-statements

### DXT problem statement structure
"[people/system] experience [pain] while trying to [action], due to [root cause]."

### Quality criteria — a well-written DXT problem statement:
- [ ] **Describes one problem** — if you need "and" or "or," split it
- [ ] **Names the action being attempted** — if you remove the action and the sentence still works, it's too abstract
- [ ] **Is specific, not vague** — if it could apply to many situations unchanged, revise it
- [ ] **Is supported by insight** — if it doesn't resonate with partner experience, revisit and refine
- [ ] **Does not suggest a solution** — if it hints at a fix, rewrite until it only describes the problem

### Stress-test question
"If you shared this with a partner tomorrow, would they immediately recognize their experience in it?"

### Output format for /create-problem-statements
For each problem statement:
1. Draft statement (in the DXT structure)
2. Quality check table (5 criteria, P