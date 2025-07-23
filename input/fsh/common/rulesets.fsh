RuleSet: SupportResource(resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $cps-exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: Profile(profile, expectation)
* rest.resource[=].profile[+] = "{profile}"
* rest.resource[=].profile[=].extension[0].url = $cps-exp
* rest.resource[=].profile[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile(profile, expectation)
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $cps-exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction(interaction, expectation)
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $cps-exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam(name, canonical, type, expectation)
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $cps-exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

RuleSet: Description(path, short, definition)
* {path} ^short = "{short}"
* {path} ^definition = "{definition}"

RuleSet: DescriptionIntl(path, language, short, definition)
* insert Translation({path} ^short, {language}, {short})
* insert Translation({path} ^definition, {language}, {definition})

RuleSet: CommentedDescription(path, short, definition, comment)
* {path} ^short = "{short}"
* {path} ^definition = "{definition}"
* {path} ^comment = "{comment}"

RuleSet: CommentedDescriptionIntl(path, language, short, definition, comment)
* insert Translation({path} ^short, {language}, {short})
* insert Translation({path} ^definition, {language}, {definition})
* insert Translation({path} ^comment, {language}, {comment})

RuleSet: Translation(path, language, translation)
* {path}.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* {path}.extension[=].extension[0].url = "lang"
* {path}.extension[=].extension[0].valueCode = #{language}
* {path}.extension[=].extension[1].url = "content"
* {path}.extension[=].extension[1].valueString = "{translation}"