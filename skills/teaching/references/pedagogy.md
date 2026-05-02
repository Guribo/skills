# Pedagogy Reference — Cognitive Science Foundations

This document contains the evidence-based teaching principles that underpin the teaching skill.
Read this when preparing to teach. Apply these techniques throughout the teaching session.

---

## Core Memory Mechanisms

### Spaced Repetition
Spaced study sessions produce stronger long-term memory than massed practice (cramming).
- Review material at increasing intervals: same day → 1 day → 3 days → 7 days → 14 days → 30 days
- Each successful retrieval extends the interval; each failure resets to a shorter interval
- Even brief review (30 seconds) at the right moment is more effective than a long session at the wrong time

### Retrieval Practice (Testing Effect)
Actively recalling information strengthens memory far more than re-reading or re-listening.
- Ask the learner to recall before showing the answer
- Multiple-choice is weaker than free recall; prefer open-ended questions
- The effort of retrieval is what builds the memory trace — difficulty is a feature, not a bug

### Forgetting Curve
Without review, memory decays rapidly — roughly halving within days.
- This is why single-session teaching without follow-up produces poor retention
- Spaced repetition directly combats the forgetting curve
- The learning log's review queue exists specifically to schedule reviews before forgetting occurs

### Dual Coding
Pairing verbal information with visual representations engages multiple cognitive channels.
- When explaining concepts, describe what a diagram would look like (the learner can visualize)
- For code topics: show the code AND explain the mental model (data flow, state changes)
- Use ASCII diagrams, tables, or structured formatting to create visual structure in text

### Interleaving
Mixing different problem types during practice forces comparison and improves discrimination.
- Don't do 10 problems of type A then 10 of type B
- Instead: A, B, A, C, B, A — this feels harder but produces better learning
- Apply during spaced repetition reviews: mix concepts from different modules

---

## Teaching Techniques

### Scaffolding
Break complex tasks into smaller steps. Provide support structures that the learner can lean on.
- Start with worked examples → guided practice → independent practice
- Provide templates, checklists, or partial solutions initially
- Gradually remove support as competence grows (fading)
- Chunk information to fit working memory (3–5 items per chunk)

### Zone of Proximal Development (ZPD)
Teach at the level just beyond what the learner can do independently.
- Too easy → boredom, no learning
- Too hard → frustration, shutdown
- Just right → productive struggle with guidance
- Continuously calibrate based on learner responses

### Socratic Method
Guide understanding through questions rather than statements.
- Instead of "The answer is X", ask "What do you think happens when...?"
- When learner is stuck, give a hint that narrows the problem space
- When learner gives a wrong answer, ask "What would happen if that were true?" to help them find the contradiction
- Reserve direct telling for when the learner has genuinely exhausted their reasoning

### Immediate Feedback
Correct errors as soon as they appear — before incorrect understanding solidifies.
- Confirm correct reasoning explicitly ("Yes, and here's why that's right...")
- Correct errors with explanation ("That's not quite right — here's what actually happens and why...")
- Don't just say "wrong" — explain the mechanism behind the correct answer

### Teach-Back (Protégé Effect)
Having the learner explain material back to you strengthens their understanding.
- "Can you explain that back to me in your own words?"
- "How would you explain this to someone who hasn't seen it before?"
- If their explanation has gaps, those gaps reveal what they don't yet understand

### Metacognition
Prompt the learner to reflect on their own thinking process.
- "What part of this was confusing?"
- "How did you arrive at that answer?"
- "What strategy did you use to solve this?"
- Self-explanation markedly improves retention

---

## Adaptation Strategies

### Difficulty Calibration

| Signal | Action |
|--------|--------|
| Answers quickly and correctly | Increase difficulty, go deeper, skip basics |
| Answers correctly but slowly | Maintain level, add more practice at this tier |
| Answers incorrectly but close | Give hints, rephrase, try different example |
| Answers incorrectly and lost | Back up one level, re-explain with simpler example |
| Stops responding or gives minimal answers | Check engagement — switch to hands-on activity |

### Style Adaptation

Some learners benefit from different approaches:
- **Examples-first**: Show the concrete case, then extract the general principle
- **Theory-first**: State the rule, then show examples (less common preference, but some prefer it)
- **Hands-on**: Give a task immediately, teach as they encounter obstacles
- **Narrative**: Embed concepts in a story or scenario

Default to examples-first — it works for most people and aligns with "concrete before abstract."

---

## Assessment Design

### Good Questions
- Require applying the concept, not just reciting it
- Have a clear correct answer (or clear criteria for a good answer)
- Are slightly different from the examples used during teaching (tests transfer)
- Increase in difficulty across a session

### Mastery Criteria
- `mastered`: Learner can explain the concept in their own words AND apply it to a novel problem
- `partial`: Learner can explain with prompting but struggles with novel application
- `needs-review`: Learner cannot explain without significant help

### Regression Indicators
- Concept previously `mastered` but learner now cannot recall or apply it
- This is normal — it indicates the review interval was too long
- Response: reduce the interval and add back to review queue

---

## Sources

Based on cognitive science and education research on learning, pedagogical design,
and intelligent tutoring systems — including work on spacing effects, retrieval practice,
the forgetting curve, dual-coding theory, interleaving, scaffolding, Zone of Proximal
Development, and Intelligent Tutoring Systems (ITS) effectiveness.
