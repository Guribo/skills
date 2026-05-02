# Knowledge Gathering Guide

How to systematically gather and evaluate knowledge before teaching.

---

## Source Priority (by reliability)

1. **Primary sources** — the actual code, official documentation, specifications
2. **Authoritative references** — textbooks, peer-reviewed papers, official tutorials
3. **Community knowledge** — well-regarded blog posts, Stack Overflow answers with high votes
4. **General web** — articles, tutorials (verify against primary sources)

Always prefer primary sources. When teaching about code, the code itself is the ultimate truth.

---

## For Code/Project Topics

### What to read
- **Entry points**: `main`, `index`, `app` files — understand the starting point
- **README / docs**: project-level documentation, architecture decisions
- **The specific files** relevant to the topic being taught
- **Tests**: they reveal intended behavior, edge cases, and usage patterns
- **Config files**: understand how the system is configured
- **Type definitions / interfaces**: understand the contracts between components

### What to look for
- How components connect and communicate
- What patterns are used (and why)
- Where the complexity lives
- Common pitfalls visible in comments or error handling
- Version/dependency information that affects behavior

### Staying current
- Re-read source files before each teaching session (code changes between sessions)
- Check git log for recent changes to relevant files
- If teaching about a library/framework, check for version updates

---

## For General Topics

### Search strategy
1. Start with a focused search query for the specific concept
2. Look for official documentation first
3. Cross-reference at least 2 sources for key claims
4. Note publication dates — prefer recent sources for fast-moving fields

### Evaluating sources
- Does the author have relevant expertise?
- Is the information consistent with other sources?
- Is it current (especially for technology topics)?
- Does it provide evidence or just assertions?

---

## Organizing Gathered Knowledge

Before building a teaching plan, organize what you've gathered:

1. **Core concepts** — the essential ideas the learner needs
2. **Dependencies** — which concepts build on which
3. **Common misconceptions** — what people typically get wrong
4. **Practical applications** — how the knowledge is actually used
5. **Edge cases** — where the simple explanation breaks down

This organization directly feeds into the teaching plan's module structure.
