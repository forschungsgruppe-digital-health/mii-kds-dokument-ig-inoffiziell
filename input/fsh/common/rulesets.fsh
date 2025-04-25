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