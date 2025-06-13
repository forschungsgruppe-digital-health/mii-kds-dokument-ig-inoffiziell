RuleSet: Meta
* meta MS

RuleSet: CS_VS_Meta(url)
* ^url = {url}
* ^experimental = false
* ^language = #de-DE

RuleSet: CS_Meta(url)
* insert CS_VS_Meta({url})
* ^caseSensitive = true
* ^content = #complete

RuleSet: VS_Meta(url)
* insert CS_VS_Meta({url})

RuleSet: EX_Meta(url)
* ^url = {url}

RuleSet: LM_Meta(url)
* ^url = {url}