# Crabby's Adventure in PostgreSQL Castle 🏰🦀

Hi, adventurers! Welcome to the ultimate quest of setting up PostgreSQL 17 in a Podman container! Imagine you’re Crabby, the fearless rustaceans 🦀, about to build a lit database fortress in your isolated Podman kingdom. This guide will help you level up step-by-step, building a solid base for storing all your most legendary loot (aka your data treasures). By the end, you’ll have a full-on PostgreSQL castle 🏰, ready to slay all your data needs! 💪✨

Whether you’re trying to practice your skills, stash that valuable loot, or create a safe haven for your adventurers, this guide has got you, fam. Let’s dive in! 🌊🚀

## PostgreSQL Installation in Podman

### Step 1: Pull the PostgreSQL Image 📦
```bash
podman pull postgres:17
```

### Step 2: Run the PostgreSQL Container 🚀
```bash
podman run --name crabbypq -e POSTGRES_PASSWORD=123456 -p 5432:5432 -d postgres:17
```

### Step 3: Access the PostgreSQL Database 🔓
```bash
podman exec -it crabbypq bash
```

### Step 4: Access the PostgreSQL Database 🐘
```bash
psql -U postgres
```

### Step 5: Create a New Database 🏗️
```sql
CREATE DATABASE crabbydb;
```

### Step 6: List All Databases 📋
```sql
\l
```

### Step 7: Connect to the New Database 🌐
```sql
\c crabbydb
```

You’ll now be inside the PostgreSQL kingdom, ready to flex your SQL spells and commands. Let’s go! 🪄✨

## DBeaver Cheat Sheet for Windows 💻✨

```text
F3: Create a new script
Alt + X: Execute the current script
```