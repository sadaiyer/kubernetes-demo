KIND:     PersistentVolumeClaim
VERSION:  v1

RESOURCE: spec <Object>

DESCRIPTION:
     Spec defines the desired characteristics of a volume requested by a pod
     author. More info:
     https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims

     PersistentVolumeClaimSpec describes the common attributes of storage
     devices and allows a Source for provider-specific attributes

FIELDS:
   accessModes	<[]string>
   dataSource	<Object>
      apiGroup	<string>
      kind	<string>
      name	<string>
   resources	<Object>
      limits	<map[string]string>
      requests	<map[string]string>
   selector	<Object>
      matchExpressions	<[]Object>
         key	<string>
         operator	<string>
         values	<[]string>
      matchLabels	<map[string]string>
   storageClassName	<string>
   volumeMode	<string>
   volumeName	<string>
