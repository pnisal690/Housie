##  Housie (Tambola) Ticket Generator (Ruby program)
This Ruby program generates a valid **Housie** ticket following official rules.
## Housie Ticket Rules
- Each ticket is a 3×9 grid (3 rows, 9 columns).

- Each row contains exactly 5 numbers (and hence 4 blanks)
| Row       | Numbers | Empty Spaces | Total Cells |
|-----------|---------|--------------|-------------|
| R1        |    5    |       4      |      9      |
| R2        |    5    |       4      |      9      |
| R3        |    5    |       4      |      9      |
|-----------|---------|--------------|-------------|
| **Total** | **15** |     **12**     |   **27**   |

- Each column has a specific range:
    Column 1: 1–9
    Column 2: 10–19
    ...
    Column 9: 80–90

Housie Ticket example:
 5 |    | 21 | 30 |    | 51 |    |    | 80|
 6 |    | 26 | 33 |    |    |    | 70 | 82|
   | 11 | 28 | 38 |    | 52 |    |    | 85|



