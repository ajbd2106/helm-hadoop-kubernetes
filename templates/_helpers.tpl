{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 24 -}}
{{- end -}}

{{/*
Create fully qualified names.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "master-fullname" -}}
{{- $name := default .Values.Master.Component -}}
{{- printf "%s-%s" .Release.Name "hadoop-namenode" | trunc 24 -}}
{{- end -}}

{{- define "webui-fullname" -}}
{{- $name := default .Chart.Name .Values.WebUi.Name -}}
{{- printf "%s-%s" .Release.Name "hadoop-webui" | trunc 24 -}}
{{- end -}}

{{- define "worker-fullname" -}}
{{- $name := default .Chart.Name .Values.Worker.Name -}}
{{- printf "%s-%s" .Release.Name "hadoop-datanode" | trunc 24 -}}
{{- end -}}

