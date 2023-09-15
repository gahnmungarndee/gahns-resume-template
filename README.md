# Gahn's Resume Template

**Hey!** If you've landed on this, you've probably been searching for a good LaTeX template for your resume but can't seem to find one because they all suck. **Well not anymore...**

### Introducing Gahn's Resume Template
A very simple, elegant, and extendable resume template to highlight all the best parts of your experience to land you that epic job (or honestly just a regular job). This template is typesetted to perfection, including modules for

1. Education
2. Work Experience
3. Volunteer Experience
4. General Bullet Points

This template is intentionally simple, well documented, and customizable. At the moment, all resume modules are put in one main document (main.tex) but can be seperated into their own module files to maintain your historical record of experiences. Modules can be moved around to highlight your world-class education for those looking for internships or entry careers, or to highlight your impressive experience to score that career-progressing job.

## How to Use
Clone (or copy/paste) this repository into your LaTeX editor of choice. [Overleaf](overleaf.com) is what I recommend to use (I made this on Overleaf). You'll be presented with three files:

1. README.md - That's this document! Feel free to dork around in this...or not. This doesn't affect the resume.
2. SampleResume.pdf - See what it looks like before you commit! Granted I spent very little time making this look like a real resume, but I promise mine looks very professional.
3. main.tex - This is where you'll add content and build your resume.
4. resume.cls - This is a class file that styles the resume.

It may be hard to read what's in these files because LaTeX is not very intutitive to use. But fear not, because both files are very well documented (I think). Combine it with this guide and you'll be nailing down that job in no time.

---
### main.tex
This is where you'll add content and build your resume. There a few basic commands to build the structure. Feel free to explore in the file as it's commented, but feel free to reference this guide as well for more detailed information.

#### Name
```
\name{<your name>}
```
This is pretty straightforward. Put your name here and it'll be the title of the resume. It'll be large and centered on the top of the page.
<br>
<br>

#### Contact Info
```
\contact
  {<your email>}
  {your phone num>}
  {your website/LinkedIn}
  {<your geographic area>}
```
Again, pretty straightforward. Put your info and they'll appear under your name.
<br>
<br>

#### Sections
```
\section{<section name>}
```
This is where you can customize the names of your section headings.
<br>
<br>

#### Education Modules
```
\education
    {<institution name>}
    {<institution location>}
    {<start date>}
    {<end date>}
    {<degree>}
    {<minors (optional)>}
    {additional curricula (option)}
    {<involvement and honors (optional)}
```
This is where you'll input information for your education. You can use a module for each education you'd like to list. For options that are optional and you do not want to use them, format like this
```
\education
    {<institution name>}
    {<institution location>}
    {<start date>}
    {<end date>}
    {<degree>}
    {}
    {}
    {}
```
<br>
<br>

#### Work Modules 
```
\work
    {<company name>} % Company nae
    {<company location>} % Location worked
    {<start date>}
    {<end date>}
    {<job title>}
    {
        \newitem bulletpoint 1

        \newitem bulletpoint 2
    }
```
This is where you'll input information for your work. You can use a module for each workplace you'd like to list. Use \newitem for each bulletpoint you'd like to list.
<br>
<br>

#### Volunteer Modules 
```
\volunteer
    {<organization name>}
    {<start date>}
    {<end date>}
    {<position>}
    {
        \newitem bulletpoint 1

        \newitem bulletpoint 2
    }
```
This is where you'll input information for your volunteer experience. You can use a module for each volunteer place you'd like to list. Use \newitem for each bulletpoint you'd like to list.
<br>
<br>

#### General Modules
```
\general
    {
        \newitem bulletpoint 1

        \newitem bulletpoint 2
    }
```
This is where you'd list additional information that doesn't fall into the other category blocks. Use \newitem for each bulletpoint you'd like to list.

---
### resume.cls
Honestly, this is too complicated to explain in detail. I think it's pretty self-explanatory and well commented. If you still can't figure something out, Google is you friend. If you're still stuck, email me.
