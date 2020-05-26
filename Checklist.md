---
title:  Protocol for Preparation of a Data Deposit Package for Zenodo
subtitle: DRAFT
author:
- Rainer M Krug, Rainer@uzh.ch
description: |
    This document details the workflow what to do when preparing a data deposit package for Zenodo including a checklist.
---

-------------

## <span style="color:red">To Decide</span>
- **include DOI and bibliometric data into emeScheme?** - new tab would be best
- **export to `eml`?** - possible, but needs some work and considerations. Export will **not** be roundtrip possible - import of `eml` will not result in identical `emeScheme` metadata.
- **ZENODO as recommended Repo?** - create community to collect deposits?
 
 
-------------

## Preparation workflow
This checklist does not need to be done in the exact order, although some steps are required before others. During working through this checklist, a document is created, which accompanies the data deposit and describes all the files. <span style="color:blue">This document should be preferably in `html` format (easily readable from all browsers). Alternatives are `pdf` or `md` (markdown) files. The document should be named `index.html`, `index.pdf` or `index.md` depending on the format. Preferably, `.html` and `.pdf` should be included</span> Information is structured in specific sections, which are specified in <span style="color:red">red</span>.

One important point to consider is Intelectual Property Rights. If you think, it is advisable to protect IPs, you should consider contacting the relevant offices at the University for further information as publication under an open license may make it impossible to register IPs afterwards. 

- [ ] Prepare data deposit on Zenodo
Zenodo requires a small set of bibliographic metadata and has a range of optional metadata. The more accurate this data is entered, the easier findable it will be.  
The data stored in Zenodo should be documented. The `index.` should contain the following metadata in a section:

	- [ ] Zenodo <span style="color:red">Community</span>: **IEU UZH** <span style="color:red">NEEDS TO BE CREATED</span> and others when appropriate
	- [ ] Upload <span style="color:red">Type</span>: Usually Dataset, others require additional info, please specify as well
	- [ ] <span style="color:red">DOI</span> - Reserve it by clicking the `Reserve DOI button`. This will reserve the DOI, and you can add it to the documentation and publications.
	- [ ] <span style="color:red">Publication date</span>
	- [ ] <span style="color:red">Title</span>
	- [ ] <span style="color:red">Authors</span>, including affiliation and ORCID (if you don't have one, get one!) and their contribution. Contribution should follow[ CRediT – Contributor Roles Taxonomy]( https://casrai.org/credit/)
	- [ ] <span style="color:red">Description</span> - a short description of what is deposited
	- [ ] <span style="color:red">Version</span> - if this is a versiond DOI, e.g. daily updated data, each day could get the date (2020.12.15) as a version, and the whole dataset would have one DOI, which would always point to the latest deposit, and each day would also have in addition its own DOI
	- [ ] <span style="color:red">Language</span>
	- [ ] <span style="color:red">Keywords</span>
	- [ ] <span style="color:red">Additional notes</span>
	- [ ] <span style="color:red">License</span> The access right should be "Open Access" and as License the "Creative Commons Attribution 4.0 International" is highly recommended
	- [ ] <span style="color:red">are there other optional fields which we should use?</span>

- [ ] Section called <span style="color:red">Files</span> explaining the files in the deposit
- [ ] Detailed descriptions of methods in a document `methods.` included as pdf or text file. This could also be a or part of a publications. This desription can also be in the `index.` document in a section called <span style="color:red">Methods</span>  
- [ ] data files in open formats (e.g. csv)
- [ ] emeScheme metadata filled in `emeScheme.xlsx` <span style="color:red">Yes I know - not an open format - but OK?</span>
- [ ] emeScheme metadata exported to xml `emeScheme.xml`

-------------

## Conversion of `emeScheme.xlsx` to `eml` format
<span style="color:red">This we have to decide.</span>

-------------

## Packaging - all files in one folder for packaging
- [ ] `index.html`
- [ ] `emeScheme.xlsx`
- [ ] `emeScheme.xml`
- [ ] data file(s)

-------------

- [ ] Submit to <span style="color:red">whom?</span> for checking
- [ ] Submit to <span style="color:red">whom?</span> approval

## Upload to Zenodo or other Repository

-------------

## Acceptance into IEU UZH Community
<span style="color:red">Who will be the community admin? This can not easily be transferred - we should have one email zenodo.community@ieu.uzh.ch ?</span>

-------------

## Comments from Group Meeting

### Repository
- Owen: University repository - 
- Gabriela - data archiving may have information (ask)
- Community? possibly not or yes?


### General remarks
- Wino: science open data Mark Robinson & (Owen will keep me informed)


### Comments regarding Workflow
<!-- - Check for Intellectual Property Rights necessary before publication? -->
<!-- - add metadata: Contributions to the data package of authors (role) "credit taxonomy for contributions" https://casrai.org/credit/ -->
- I approve deposits
- Maja keeps list of data packages / publications (I suggest using Zotero for this)
- not linked to single repository

### Comments regarding Data
- What data MUST and CAN be published

### Next Steps
- Zenodo size uploads
- **add bibliometric metadata to emeScheme**
- **create `index.md` from emeScheme**
- try it with Uriahs and Davids data

