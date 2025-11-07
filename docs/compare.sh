#/usr/bin/env sh

java -jar ../validator_cli.jar \
     -version 4.0.1 \
     -compare \
     -ig $(pwd)/../fsh-generated/resources \
     -ig de.gematik.isik#5.1.0 \
     -dest $(pwd)/mii-kds-dokument_isik \
     -left https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument \
     -right https://gematik.de/fhir/isik/StructureDefinition/ISiKDokumentenMetadaten

java -jar ../validator_cli.jar \
     -version 4.0.1 \
     -compare \
     -ig $(pwd)/../fsh-generated/resources \
     -ig kbv.basis#1.7.0 \
     -dest $(pwd)/mii-kds-dokument_mio \
     -left https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument \
     -right https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_DocumentReference

java -jar ../validator_cli.jar \
     -version 4.0.1 \
     -compare \
     -ig $(pwd)/../fsh-generated/resources \
     -ig ihe.iti.mhd#4.2.3 \
     -dest $(pwd)/mii-kds-dokument_mhd \
     -left https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument \
     -right https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference