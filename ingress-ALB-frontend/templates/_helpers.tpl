{{- define "common.labels" -}}
role: frontend
{{- end -}}


{{- define "common.secretimage" -}}
name: frontend
{{- end -}}

{{- define "common.containerPort" -}}
{{ .Values.containerPort | default 3000 }}
{{- end -}}


