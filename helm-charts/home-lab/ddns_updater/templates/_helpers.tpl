{{- define "ddns-updater.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "ddns-updater.fullname" -}}
{{- include "ddns-updater.name" . }}-{{ .Release.Name }}
{{- end -}}
