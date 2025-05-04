view: condition {
  sql_table_name: my_healthcare_data.condition ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: condition_code {
    type: string
    sql: ${TABLE}.code__coding_code ;;
  }

  dimension: condition_display {
    type: string
    sql: ${TABLE}.code__coding_display ;;
  }

  dimension: clinical_status {
    type: string
    sql: ${TABLE}.clinical_status ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.subject__patient_id ;;
  }

  dimension: encounter_id {
    type: string
    sql: ${TABLE}.context__encounter_id ;;
  }

  dimension_group: onset {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.onset_datetime ;;
  }

  dimension: verification_status {
    type: string
    sql: ${TABLE}.verification_status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, condition_code, patient_id]
  }
}