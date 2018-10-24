{{- define "maalfrid.languageDetector.host" -}}      {{ printf "%s-%s" .Release.Name .Values.default.languageDetector.host | trunc 63 | trimSuffix "-" }}{{- end -}}
{{- define "maalfrid.aggregatorService.host" -}}      {{ printf "%s-%s" .Release.Name .Values.default.aggregatorService.host | trunc 63 | trimSuffix "-" }}{{- end -}}
