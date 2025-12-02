 # KPI view for migration coverage by county

CREATE OR REPLACE VIEW v_migration_kpi AS
SELECT
   c.county,
   coalesce(p.clean_count, 0) AS clean_records,
   coalesce(r.reject_count, 0) AS rejected_records,
   coalesce(
      p.clean_count * 100/
      NULLIF(p.clean_count + coalesce(r.reject_count, 0),0),
      0
) AS coverage_pct
FROM(
   SELECT 'San Joaquin' AS county
   UNION ALL SELECT 'Yolo'
   UNION ALL SELECT 'Grant'
) c
LEFT JOIN (
    SELECT county, COUNT(*) AS clean_count
    FROM property_master
    GROUP BY county
) p ON c.county = p.county
LEFT JOIN (
    SELECT county, COUNT(*) AS reject_count
    FROM rejected_records
    GROUP BY county
) r ON c.county = r.county;
