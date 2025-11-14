#/usr/bin/env sh

FHIR_VERSION="4.0.1"
WORKSPACE=${1:-"$(pwd)"}

ISIK_VERSION=${2:-"5.1.0"}
ISIK_DOCUMENT_PROFILE="https://gematik.de/fhir/isik/StructureDefinition/ISiKDokumentenMetadaten"

MIO_VERSION=${3:-"1.7.0"}
MIO_DOCUMENT_PROFILE="https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_DocumentReference"

MHD_VERSION=${4:-"4.2.3"}
MHD_DOCUMENT_PROFILE="https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference"

mkdir mii-kds-dokument_isik \
      mii-kds-dokument_mio \
      mii-kds-dokument_mhd

java -jar ${WORKSPACE}/validator_cli.jar \
     -version ${FHIR_VERSION} \
     -compare \
     -ig ${WORKSPACE}/fsh-generated/resources \
     -ig de.gematik.isik#${ISIK_VERSION} \
     -dest ${WORKSPACE}/docs/mii-kds-dokument_mhd \
     -left https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument \
     -right ${ISIK_DOCUMENT_PROFILE}

java -jar ${WORKSPACE}/validator_cli.jar \
     -version ${FHIR_VERSION} \
     -compare \
     -ig ${WORKSPACE}/fsh-generated/resources \
     -ig kbv.basis#${MIO_VERSION} \
     -dest ${WORKSPACE}/docs/mii-kds-dokument_mhd \
     -left https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument \
     -right ${MIO_DOCUMENT_PROFILE}

java -jar ${WORKSPACE}/validator_cli.jar \
     -version ${FHIR_VERSION} \
     -compare \
     -ig ${WORKSPACE}/fsh-generated/resources \
     -ig ihe.iti.mhd#${MHD_VERSION} \
     -dest ${WORKSPACE}/docs/mii-kds-dokument_mhd \
     -left https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument \
     -right ${MHD_DOCUMENT_PROFILE}