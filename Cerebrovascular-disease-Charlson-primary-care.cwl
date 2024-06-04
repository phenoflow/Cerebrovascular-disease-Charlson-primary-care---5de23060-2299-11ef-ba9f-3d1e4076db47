cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  precerebral-cerebrovascular-disease-charlson-primary-care---primary:
    run: precerebral-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  cerebrovascular-disease-charlson-primary-care-brain---primary:
    run: cerebrovascular-disease-charlson-primary-care-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: precerebral-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular---primary:
    run: cerebrovascular---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-brain---primary/output
  cerebrovascular-disease-charlson-primary-care-haemorrh---primary:
    run: cerebrovascular-disease-charlson-primary-care-haemorrh---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: cerebrovascular---primary/output
  cerebrovascular-disease-charlson-primary-care-stroke---primary:
    run: cerebrovascular-disease-charlson-primary-care-stroke---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-haemorrh---primary/output
  cerebrovascular-disease-charlson-primary-care-puerperium---primary:
    run: cerebrovascular-disease-charlson-primary-care-puerperium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-stroke---primary/output
  cerebrovascular-disease-charlson-primary-care-unspecif---primary:
    run: cerebrovascular-disease-charlson-primary-care-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-puerperium---primary/output
  annual-cerebrovascular-disease-charlson-primary-care---primary:
    run: annual-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-unspecif---primary/output
  cerebrovascular-disease-charlson-primary-care-capsule---primary:
    run: cerebrovascular-disease-charlson-primary-care-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: annual-cerebrovascular-disease-charlson-primary-care---primary/output
  nontraumatic-cerebrovascular-disease-charlson-primary-care---primary:
    run: nontraumatic-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-capsule---primary/output
  vertebrobasilar-cerebrovascular-disease-charlson-primary-care---primary:
    run: vertebrobasilar-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: nontraumatic-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-infarctn---primary:
    run: cerebrovascular-disease-charlson-primary-care-infarctn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: vertebrobasilar-cerebrovascular-disease-charlson-primary-care---primary/output
  other-cerebrovascular-disease-charlson-primary-care---primary:
    run: other-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-infarctn---primary/output
  cerebrovascular-disease-charlson-primary-care-history---primary:
    run: cerebrovascular-disease-charlson-primary-care-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: other-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-steno---primary:
    run: cerebrovascular-disease-charlson-primary-care-steno---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-history---primary/output
  cerebrovascular-disease-charlson-primary-care-ischaemia---primary:
    run: cerebrovascular-disease-charlson-primary-care-ischaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-steno---primary/output
  cerebrovascular-disease-charlson-primary-care-precerebr---primary:
    run: cerebrovascular-disease-charlson-primary-care-precerebr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-ischaemia---primary/output
  cerebrovascular-disease-charlson-primary-care-indicator---primary:
    run: cerebrovascular-disease-charlson-primary-care-indicator---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-precerebr---primary/output
  cerebrovascular-disease-charlson-primary-care-occlus---primary:
    run: cerebrovascular-disease-charlson-primary-care-occlus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-indicator---primary/output
  cerebrovascular-disease-charlson-primary-care-patch---primary:
    run: cerebrovascular-disease-charlson-primary-care-patch---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-occlus---primary/output
  bilateral-cerebrovascular-disease-charlson-primary-care---primary:
    run: bilateral-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-patch---primary/output
  meningeal-cerebrovascular-disease-charlson-primary-care---primary:
    run: meningeal-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: bilateral-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-hemisphere---primary:
    run: cerebrovascular-disease-charlson-primary-care-hemisphere---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: meningeal-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-occlusn---primary:
    run: cerebrovascular-disease-charlson-primary-care-occlusn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-hemisphere---primary/output
  cerebrovascular-disease-charlson-primary-care-lacunar---primary:
    run: cerebrovascular-disease-charlson-primary-care-lacunar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-occlusn---primary/output
  carotid-cerebrovascular-disease-charlson-primary-care---primary:
    run: carotid-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-lacunar---primary/output
  cerebrovascular-disease-charlson-primary-care-specified---primary:
    run: cerebrovascular-disease-charlson-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: carotid-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-injury---primary:
    run: cerebrovascular-disease-charlson-primary-care-injury---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-specified---primary/output
  cerebrovascular-disease-charlson-primary-care-sided---primary:
    run: cerebrovascular-disease-charlson-primary-care-sided---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-injury---primary/output
  cerebrovascular-disease-charlson-primary-care-embolism---primary:
    run: cerebrovascular-disease-charlson-primary-care-embolism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-sided---primary/output
  cerebrovascular-disease-charlson-primary-care-infarct---primary:
    run: cerebrovascular-disease-charlson-primary-care-infarct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-embolism---primary/output
  cerebrovascular-disease-charlson-primary-care---primary:
    run: cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-infarct---primary/output
  cerebrovascular-disease-charlson-primary-care-system---primary:
    run: cerebrovascular-disease-charlson-primary-care-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-letter---primary:
    run: cerebrovascular-disease-charlson-primary-care-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-system---primary/output
  cerebrovascular-disease-charlson-primary-care-thrombosis---primary:
    run: cerebrovascular-disease-charlson-primary-care-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-letter---primary/output
  vertebral-cerebrovascular-disease-charlson-primary-care---primary:
    run: vertebral-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-thrombosis---primary/output
  right-cerebrovascular-disease-charlson-primary-care---primary:
    run: right-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: vertebral-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-excepted---primary:
    run: cerebrovascular-disease-charlson-primary-care-excepted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: right-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-newborn---primary:
    run: cerebrovascular-disease-charlson-primary-care-newborn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-excepted---primary/output
  cerebrovascular-disease-charlson-primary-care-stenosis---primary:
    run: cerebrovascular-disease-charlson-primary-care-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-newborn---primary/output
  cerebrovascular-disease-charlson-primary-care-function---primary:
    run: cerebrovascular-disease-charlson-primary-care-function---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-stenosis---primary/output
  cerebrovascular-disease-charlson-primary-care-origin---primary:
    run: cerebrovascular-disease-charlson-primary-care-origin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-function---primary/output
  cerebrovascular-disease-charlson-primary-care-monitoring---primary:
    run: cerebrovascular-disease-charlson-primary-care-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-origin---primary/output
  cerebellar-cerebrovascular-disease-charlson-primary-care---primary:
    run: cerebellar-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-monitoring---primary/output
  cerebrovascular-disease-charlson-primary-care-anterior---primary:
    run: cerebrovascular-disease-charlson-primary-care-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: cerebellar-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-endarterectomy---primary:
    run: cerebrovascular-disease-charlson-primary-care-endarterectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-anterior---primary/output
  cerebrovascular-disease-charlson-primary-care-posterior---primary:
    run: cerebrovascular-disease-charlson-primary-care-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-endarterectomy---primary/output
  acute-cerebrovascular-disease-charlson-primary-care---primary:
    run: acute-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-posterior---primary/output
  puerperal-cerebrovascular-disease-charlson-primary-care---primary:
    run: puerperal-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: acute-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-basal---primary:
    run: cerebrovascular-disease-charlson-primary-care-basal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: puerperal-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-improvement---primary:
    run: cerebrovascular-disease-charlson-primary-care-improvement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-basal---primary/output
  intracerebral-cerebrovascular-disease-charlson-primary-care---primary:
    run: intracerebral-cerebrovascular-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-improvement---primary/output
  cerebrovascular-disease-charlson-primary-care-generalised---primary:
    run: cerebrovascular-disease-charlson-primary-care-generalised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: intracerebral-cerebrovascular-disease-charlson-primary-care---primary/output
  cerebrovascular-disease-charlson-primary-care-review---primary:
    run: cerebrovascular-disease-charlson-primary-care-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-generalised---primary/output
  cerebrovascular-disease-charlson-primary-care-anomaly---primary:
    run: cerebrovascular-disease-charlson-primary-care-anomaly---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-review---primary/output
  cerebrovascular-disease-charlson-primary-care-wallenberg---primary:
    run: cerebrovascular-disease-charlson-primary-care-wallenberg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-anomaly---primary/output
  cerebrovascular-disease-charlson-primary-care-middle---primary:
    run: cerebrovascular-disease-charlson-primary-care-middle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-wallenberg---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-charlson-primary-care-middle---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
