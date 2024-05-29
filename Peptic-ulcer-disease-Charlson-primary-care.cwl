cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  peptic-ulcer-disease-charlson-primary-care-perforation---primary:
    run: peptic-ulcer-disease-charlson-primary-care-perforation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  peptic-ulcer-disease-charlson-primary-care-specified---primary:
    run: peptic-ulcer-disease-charlson-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-perforation---primary/output
  peptic-ulcer-disease-charlson-primary-care-bleeding---primary:
    run: peptic-ulcer-disease-charlson-primary-care-bleeding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-specified---primary/output
  peptic-ulcer-disease-charlson-primary-care-haemorrhage---primary:
    run: peptic-ulcer-disease-charlson-primary-care-haemorrhage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-bleeding---primary/output
  acute-peptic-ulcer-disease-charlson-primary-care---primary:
    run: acute-peptic-ulcer-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-haemorrhage---primary/output
  peptic-ulcer-disease-charlson-primary-care---primary:
    run: peptic-ulcer-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: acute-peptic-ulcer-disease-charlson-primary-care---primary/output
  duodenal-peptic-ulcer-disease-charlson-primary-care---primary:
    run: duodenal-peptic-ulcer-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care---primary/output
  peptic-ulcer-disease-charlson-primary-care-history---primary:
    run: peptic-ulcer-disease-charlson-primary-care-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: duodenal-peptic-ulcer-disease-charlson-primary-care---primary/output
  peptic-ulcer-disease-charlson-primary-care-operation---primary:
    run: peptic-ulcer-disease-charlson-primary-care-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-history---primary/output
  peptic-ulcer-disease-charlson-primary-care-duodenum---primary:
    run: peptic-ulcer-disease-charlson-primary-care-duodenum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-operation---primary/output
  peptic-ulcer-disease-charlson-primary-care-obstruction---primary:
    run: peptic-ulcer-disease-charlson-primary-care-obstruction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-duodenum---primary/output
  prepyloric-peptic-ulcer-disease-charlson-primary-care---primary:
    run: prepyloric-peptic-ulcer-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-obstruction---primary/output
  peptic-ulcer-disease-charlson-primary-care-repair---primary:
    run: peptic-ulcer-disease-charlson-primary-care-repair---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: prepyloric-peptic-ulcer-disease-charlson-primary-care---primary/output
  gastric-peptic-ulcer-disease-charlson-primary-care---primary:
    run: gastric-peptic-ulcer-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-repair---primary/output
  gastrojejunal-peptic-ulcer-disease-charlson-primary-care---primary:
    run: gastrojejunal-peptic-ulcer-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: gastric-peptic-ulcer-disease-charlson-primary-care---primary/output
  peptic-ulcer-disease-charlson-primary-care-complication---primary:
    run: peptic-ulcer-disease-charlson-primary-care-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: gastrojejunal-peptic-ulcer-disease-charlson-primary-care---primary/output
  peptic-ulcer-disease-charlson-primary-care-antiplatelet---primary:
    run: peptic-ulcer-disease-charlson-primary-care-antiplatelet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-complication---primary/output
  peptic-ulcer-disease-charlson-primary-care-perforated---primary:
    run: peptic-ulcer-disease-charlson-primary-care-perforated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-antiplatelet---primary/output
  peptic-ulcer-disease-charlson-primary-care-unspec---primary:
    run: peptic-ulcer-disease-charlson-primary-care-unspec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-perforated---primary/output
  peptic-ulcer-disease-charlson-primary-care-suture---primary:
    run: peptic-ulcer-disease-charlson-primary-care-suture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-unspec---primary/output
  peptic-ulcer-disease-charlson-primary-care-excision---primary:
    run: peptic-ulcer-disease-charlson-primary-care-excision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-suture---primary/output
  chronic-peptic-ulcer-disease-charlson-primary-care---primary:
    run: chronic-peptic-ulcer-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-excision---primary/output
  peptic-ulcer-disease-charlson-primary-care-stomach---primary:
    run: peptic-ulcer-disease-charlson-primary-care-stomach---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: chronic-peptic-ulcer-disease-charlson-primary-care---primary/output
  peptic-ulcer-disease-charlson-primary-care-erosion---primary:
    run: peptic-ulcer-disease-charlson-primary-care-erosion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-stomach---primary/output
  peptic-ulcer-disease-charlson-primary-care-closure---primary:
    run: peptic-ulcer-disease-charlson-primary-care-closure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-erosion---primary/output
  peptic-ulcer-disease-charlson-primary-care-inflammatory---primary:
    run: peptic-ulcer-disease-charlson-primary-care-inflammatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-closure---primary/output
  ulcer---primary:
    run: ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-inflammatory---primary/output
  peptic-ulcer-disease-charlson-primary-care-haemostasis---primary:
    run: peptic-ulcer-disease-charlson-primary-care-haemostasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ulcer---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-charlson-primary-care-haemostasis---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
