## Xml

### Validation

DTD
```bash
xmllint --noout --dtdvalid model.dtd testfile.xml
```

XSD
```bash
xmllint --noout --schema model.xsd testfile.xml
```

No output means validation successful, if validation fails error will be shown.
