
#readmeObsidian


# Obsidian Second Brain — Simple Setup

## Folders

```text
Inbox/
Projects/
Areas/
Knowledge/
Meetings/
```

### Inbox

Capture everything quickly.

### Projects

Work with a clear outcome.

Examples:

```text
TMG Backend
GPS Wearable
LinkedIn Freelancing
```

### Areas

Ongoing responsibilities.

Examples:

```text
Team Leadership
Backend Engineering
Workouts
Career
```

### Knowledge

Reusable information from the Inbox.

Use clear statement-based titles:

```text
MongoDB indexes improve reads but slow writes
API migrations should preserve existing responses
Consistent workouts are better than perfect workouts
```

### Meetings

Store:

- Preparation
    
- Notes
    
- Decisions
    
- Action items
    

---

# How to connect notes

Every important note should connect to:

1. One Project or Area
    
2. One or two related notes
    

Example:

```markdown
## Connected to

- [[TMG Backend]]
- [[Backend Engineering]]

## Related

- [[MongoDB sync must reject tm as target database]]
- [[Database migrations should preserve API responses]]
```

Do not link every word.

---

# Project Hub example

```markdown
# TMG Backend

## Goal

Maintain and improve the TMG backend.

## Current work

- [[Files to Database Migration]]
- [[Notification Performance]]
- [[EBM Deployment]]

## Meetings

- [[Meeting — Database Migration — 2026-08-04]]

## Knowledge

- [[MongoDB sync must reject tm as target database]]
- [[API migrations should preserve existing responses]]
```

The Project Hub becomes the centre of the Local Graph.

---

# Inbox workflow

```text
Capture in Inbox
      ↓
Is it useful later?
      ↓
No → Delete or leave it
Yes → Create a Knowledge note
      ↓
Connect it to a Project or Area
      ↓
Clear the Inbox
```

Process the Inbox daily or every two to three days.

---

# Search method

Use this order:

```text
Ctrl + O
Find a note by title

Ctrl + Shift + F
Search inside all notes

Alt + G
Open Local Graph

Alt + B
Check Backlinks
```

Useful searches:

```text
path:Inbox
```

```text
path:Knowledge MongoDB
```

```text
path:Meetings EBM
```

```text
task-todo:
```

```text
"target cannot be tm"
```

---

# Recommended shortcuts

|Shortcut|Action|
|---|---|
|`Alt + D`|Open today’s Inbox note|
|`Ctrl + O`|Find a note|
|`Ctrl + Shift + F`|Search all content|
|`Alt + G`|Open Local Graph|
|`Alt + B`|Show Backlinks|
|`Alt + T`|Insert a template|
|`Ctrl + Shift + M`|Move current note|
|`Ctrl + Alt + S`|Commit and sync with Git|

## Most important five

```text
Alt + D
Capture

Ctrl + O
Find a note

Ctrl + Shift + F
Find information

Alt + G
Find connections

Ctrl + Alt + S
Save to Git
```

# Final rule

> Capture in Inbox, manage work in Projects, manage responsibilities in Areas, convert reusable information into Knowledge, store meeting preparation and outcomes in Meetings, and connect important notes using `[[links]]`.