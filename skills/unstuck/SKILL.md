---
name: unstuck
description: Use when the same error survives 3 different attempts, when retrying variations of one idea, going in circles, or stuck; escape ladder for dead ends that trades guesses for evidence.
---

# Unstuck

The fourth retry is forbidden — climb the ladder instead: each rung trades another guess for new evidence.

## Ladder

Climb in strict order; stop at the first rung that unblocks you, and leave a one-line fact for every rung climbed.

1. Reread the exact error text slowly, in full, including the tail. Half of all dead ends end here: the answer was written in a message "already read".
2. Switch layers. Ran commands — sit down and read the code; read the code — look at real data; looked at data — check the environment (versions, PATH, permissions).
3. Search project knowledge: lessons.md, closed issues (`gh search issues`), project docs. Much has been solved before.
4. Ask a frontier-class model with evidence: what you did, what you expected, what you got, what you already ruled out. Hand over evidence, not "it doesn't work, help".
5. Report to the user: what you tried, what you ruled out, where you stand, what the forks are. This is reconnaissance output, not failure; failure is an hour of silence followed by "couldn't do it".

## Exit checklist

- [ ] No fourth retry of the same kind happened; the ladder was climbed instead.
- [ ] Every rung climbed left a one-line fact: what it proved or ruled out.
- [ ] The model prompt (rung 4), if used, contained evidence: did / expected / got / ruled out.
- [ ] The report (rung 5), if reached, lists ruled-out versions, not only the symptom.
