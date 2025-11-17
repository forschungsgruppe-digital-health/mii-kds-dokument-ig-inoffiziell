#/usr/bin/env sh

set -e

FHIR_VERSION="4.0.1"
WORKSPACE=${1:-"$(pwd)"}

ISIK_VERSION=${2:-"5.1.0"}
ISIK_DOCUMENT_PROFILE="https://gematik.de/fhir/isik/StructureDefinition/ISiKDokumentenMetadaten"

MIO_VERSION=${3:-"1.7.0"}
MIO_DOCUMENT_PROFILE="https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_DocumentReference"

MHD_VERSION=${4:-"4.2.3"}
MHD_DOCUMENT_PROFILE="https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.UnContained.Comprehensive.DocumentReference"
     
MII_CDS_DOKUMENT="https://www.medizininformatik-initiative.de/fhir/ext/modul-dokument/StructureDefinition/mii-pr-dokument-dokument"

cp "${WORKSPACE}/docs/index.template.html" "${WORKSPACE}/docs/index.html"
sed -i "s/{{DATETIME}}/$(date +'%Y-%m-%d %H:%M:%S %Z')/g" "${WORKSPACE}/docs/index.html"
sed -i "s/{{ISIK_VERSION}}/${ISIK_VERSION}/g" "${WORKSPACE}/docs/index.html"
sed -i "s/{{MIO_VERSION}}/${MIO_VERSION}/g" "${WORKSPACE}/docs/index.html"
sed -i "s/{{MHD_VERSION}}/${MHD_VERSION}/g" "${WORKSPACE}/docs/index.html"

rm -rf ${WORKSPACE}/docs/mii-kds-dokument_isik \
       ${WORKSPACE}/docs/mii-kds-dokument_mio \
       ${WORKSPACE}/docs/mii-kds-dokument_mhd

mkdir ${WORKSPACE}/docs/mii-kds-dokument_isik \
      ${WORKSPACE}/docs/mii-kds-dokument_mio \
      ${WORKSPACE}/docs/mii-kds-dokument_mhd

java -jar ${WORKSPACE}/validator_cli.jar \
     -version ${FHIR_VERSION} \
     -compare \
     -ig ${WORKSPACE}/fsh-generated/resources \
     -ig de.gematik.isik#${ISIK_VERSION} \
     -dest ${WORKSPACE}/docs/mii-kds-dokument_mhd \
     -right ${MII_CDS_DOKUMENT} \
     -left ${ISIK_DOCUMENT_PROFILE}

java -jar ${WORKSPACE}/validator_cli.jar \
     -version ${FHIR_VERSION} \
     -compare \
     -ig ${WORKSPACE}/fsh-generated/resources \
     -ig kbv.basis#${MIO_VERSION} \
     -dest ${WORKSPACE}/docs/mii-kds-dokument_mhd \
     -right ${MII_CDS_DOKUMENT} \
     -left ${MIO_DOCUMENT_PROFILE}

java -jar ${WORKSPACE}/validator_cli.jar \
     -version ${FHIR_VERSION} \
     -compare \
     -ig ${WORKSPACE}/fsh-generated/resources \
     -ig ihe.iti.mhd#${MHD_VERSION} \
     -dest ${WORKSPACE}/docs/mii-kds-dokument_mhd \
     -right ${MII_CDS_DOKUMENT} \
     -left ${MHD_DOCUMENT_PROFILE}