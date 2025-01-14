{{/*
Return the fully qualified name of the chart
*/}}
{{- define "postgres.fullname" -}}
postgres
{{- end -}}

{{/*
Return the name of the application for labels
*/}}
{{- define "postgres-deployment.name" -}}
postgres
{{- end -}}

{{/*
Return the labels for the application
*/}}
{{- define "postgres.labels" -}}
app: {{ include "postgres-deployment.name" . }}
{{- end -}}

{{/*
Return the selector labels for the application
*/}}
{{- define "postgres-deployment.selectorLabels" -}}
app: {{ include "postgres-deployment.name" . }}
{{- end -}}

{{/*
Generate a volume for persistent storage
*/}}
{{- define "postgres-deployment.volume" -}}
- name: postgres-volume
  persistentVolumeClaim:
    claimName: {{ .Values.pvc.claimName }}
{{- end -}}

{{- define "PostgreSQL.hostpath" -}}
{{- default "/data/postgres" .Values.PostgreSQL.hostpath }}
{{- end -}}
