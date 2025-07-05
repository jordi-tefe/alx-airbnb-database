## Normalization to 3NF (Third Normal Form)

### Step 1: First Normal Form (1NF)
- All attributes are atomic.
- Each field contains only one value.
- There are no repeating groups or arrays.

### Step 2: Second Normal Form (2NF)
- All tables have a single-column primary key (UUID).
- All non-key attributes are fully functionally dependent on the primary key.

### Step 3: Third Normal Form (3NF)
- All non-key attributes are only dependent on the primary key, not on other non-key attributes.

✅ No transitive dependencies were found.
✅ Schema is in 3NF.

---
