# 2025_shah_nutrivention_pilot
Code for the Nutrivention Pilot Study

*Note: All figures generated during the analysis process can be found (as pngs and svgs) in notebooks/analyses/figures*

## General organization:

- `data`: the data analyzed in this project.  Typically only add the processed data here (ie the phyloseq objects rather than raw fastqs). Note that as a default all files here are ignored by git (you can change this if desired by editing the `.gitignore` file.).  Highly recommended to also have a backup of at least any raw data (and if you go through the hassle of cleaning/deidentifying your data that as well!) on the shared drive etc. 
- `data-cleaning`: For any de-identification, and data manipulation prior to downstream analyses.  Highly recommended: start your project by converting all your data to deidentified data, then proceed with the downstream analysis using these de-identified files as your starting place.  This will make your life much easier when/if it comes to publishing these results. :)  Typically what I try to do is create a folder within data called `cleaned_deidentified_data` where I put data sources after passing them through my de-identifying scripts. 
- `docs`: this directory is automatically generated based on the `notebooks` directory and should not be modified directly. See [instructions below](#rendering-the-docs) on how to generate. 
- `hpc_scripts`: For scripts used on the hpc.
- `misc_scripts`: useful place to stick those scripts for random asks (ie generating a list of samples to sequence).  Also totally valid to put this in the analysis notebooks section.
- `notebooks`: For all data analysis and exploration notebooks. This directory also generates the docs associated with this project.  More details on that [below](#rendering-the-docs). Here is the general structure of this dir:
    - notes: for markdown-formatted notes about the project.  Can be useful for tracking meeting discussions or notes of what is planned/has been attempted. All notes will be automatically displayed in a date-descending format in the `00-notes_browsing.qmd` file (which is available from the default menu). 
    - images: directory for `svg` and `png` images associated with a particular project. (the svg are more useful for publication work, they can easily be pulled into adobe illustrator and manipulated.)
    - summaries: periodic summaries of the progress on the project. (typically formatted more as html docs referencing specific images outputted by analysis notebooks.  See the example file for more context. )
    - analyses: all the analysis notebooks. Recommended to use `.qmd` formatted files if working in `R`.  `ipynb` formats also work here.  All analyses will automatically be displayed in date-descending format in the `02-analysis_overview.qmd` file (which is available from the default menu). 
    

## Getting started:

- create a new repository, and select this repo as the template for that repo. 
- modify the `_quarto.yml` file in the `notebooks` dir to match details about your project:
    - change the project title
    - update the github link to actually point to your new github repo rather than to Github generally.
    - (optional) under format -> html update the theme for your page.  I personally like the `minty` theme, but you can check out some of the other options [here](https://quarto.org/docs/output-formats/html-themes.html).  Fun fact - you can even set up a dark theme and a light theme for your page if you are into that sort of thing. ([instructions for how!](https://quarto.org/docs/output-formats/html-themes.html#dark-mode))
- add a quick summary/goals of your project in `01-project_notes_and_intro.qmd`.  Can add more to this later!
- update this `README.md` file so that your project has a relevant readme :)
- get started with your analysis! :) 

## Rendering the docs:

When ready to render the docs for your page, run the following (need to be in the directory of your repo for this to work): 
- `quarto render notebooks` (Recommended for the first rendering!  Can do this as a sanity check immediately after making your repo)
    - *Note: if you need quarto - see instructions for how to download it [here](https://quarto.org/docs/get-started/)*
- This will convert all the `qmd` and `ipynb` notebooks in the notebooks repo into `html` documents. 
- If choosing to just render a particular file can also run: `quarto render <specific_file_path>`
- push your changes, including all the updated docs files to Github. 
- to host your site as a github pages in your repo go to Settings(gear at the top of the home page of your repo) -> Pages (left hand menu) -> Under the "Branch" menu, select the "main" branch as the branch to use for the Github pages deployment, then change the folder from /(root) to /docs. 
- To add rapid access to your new github pages from the repo home - return to the home page of your repo, and click on the gear symbol in the "About" panel. Under the website option, select the option "Use your GitHub Pages website"
- You can also share a link to this github pages to anyone at MSK and as long as they are on the network (either on campus or on the VPN) they will be able to view your page. \
- Note that even if your repo is private, your github pages will be "public" (where public in this context means public within the MSK network).  However someone will need to know your URL to check it out. Worth keeping in mind if putting any potentially sensitive information into your repo.