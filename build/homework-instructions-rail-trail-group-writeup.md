Visualization Homework Group Submission: Rail Trail
================
Due: Month Day, Year @ Time

## Instructions

The Homework 1 questions and instructions from last time are available
here:
[homework-1-instructions-rail-trail.md](homework-instructions-rail-trail.md)

### Overview

Your primary task is to use the R Markdown file
`visualization_homework_group.Rmd` to write up your group’s answers to
the homework assignment. Grades for the group submissions will, in
addition to correctness, be based on document formatting, visualization
quality, writing quality, and code style. **This means that your group
submission is to be written in the style of a exploratory data report,
meaning:**

  - Each exercise must be written up using full sentences such that it
    is clear what question is being answered.

  - There needs to be plain text above each code block explaining what
    you are doing, and the code blocks should be organized.

  - The R Markdown file **must** knit without error and generate a PDF
    file, and the final PDF output must look nice, clean, and be easy to
    read.

### Participation

Credit for group participation will be determined using the following
sources:

1.  A `CONTRIBUTIONS.md` file distributed with your group repository

2.  Commit history on GitHub

3.  Discussion history in your group’s private Slack channel

**Each group will need to fill out the `CONTRIBUTIONS.md` file as part
of their submission.** This file is where where each group member lists
what he or she contributed to the final submission. Read the section
**[Fill out the `CONTRIBUTIONS.md`
file](#fill-out-the-contributionsmd-file)** for more details on how this
works.

#### Google Docs

If your group used an external document to coordinate and organize your
work, such as a Google Doc, then that can also count as evidence of
participation, **provided there is a visible writing history and I can
identify which student is responsible for each edit.** This will require
you to share the relevant file with the email address `jglasbr2@gmu.edu`
and give me full privileges on the document so that I can review the
document’s editing history. Please note that anonymous edits to Google
Docs documents cannot be used as participation evidence, because I have
no way to verify the account responsible for the added content. Also,
for similar reasons, offline documents traded back and forth via email
cannot be accepted as evidence of participation.

### How to answer the questions as a group

The following is a checklist you may follow to help you get started with
answering the questions as a group:

  - \[ \] Share and discuss your individual submissions for Homework 1
    with your assigned group and come to a consensus about the correct
    answer for each question.
  - \[ \] As a group, decide who will be responsible for writing the
    answer to each question.
  - \[ \] **(Important)** Before you start, make a copy of
    `visualization_homework_group.Rmd` and **rename the copied file** to
    include your last name. For example, if your last name is Smith,
    then your file copy should be renamed to
    `visualization_homework_group_smith.Rmd`.
  - \[ \] Commit and push your copied file to GitHub. If you need a
    refresher on how to interact with GitHub, watch the linked video
    below:<br> [![Data visualization - 02 - The presidential
    dataset](https://img.youtube.com/vi/wP6xGaTdfVc/0.jpg)](https://www.youtube.com/watch?v=wP6xGaTdfVc)<br>
    URL: <https://www.youtube.com/watch?v=wP6xGaTdfVc>
  - \[ \] Place your write-ups for your questions in your file. Again,
    if my last name was Smith, and I agreed to write-up the answers to
    questions 4, 5, and 6, then I would open up
    `visualization_homework_group_smith.Rmd` and put my answers there.
    When I’m done, I would save my file, then commit and push my work to
    GitHub.

### How to edit and merge your answers into the group submission

While you will be writing your answers in separate files, eventually the
group will need to merge in everyone’s answers into the
`visualization_homework_group.Rmd` document. The following checklist may
help with this:

  - \[ \] Select an editor to be in charge of merging everyone’s answers
    into the final document `visualization_homework_group.Rmd`. Because
    the editor needs to take care of extra work to prepare the document
    for submission, it is reasonable if he or she does not contribute
    write-ups for as many of the questions as the rest of the group (for
    example, if everyone else answers three questions, the editor may
    only answer two).
  - \[ \] The editor should ensure that everyone has committed and
    pushed their answers to GitHub so they can copy and paste in each
    contribution.
  - \[ \] The editor needs to make sure that the final submission reads
    like a coherent document and that the writing style and code style
    are uniform across all the answers. In other words, it should read
    like a single person answered all the questions, not a group of four
    people.
  - \[ \] The editor will be in charge of of committing and pushing the
    final R Markdown file to GitHub, knitting to PDF, and uploading the
    PDF file on Blackboard.

### Fill out the `CONTRIBUTIONS.md` file

After everything is written up and ready for submission, the last thing
the group will need to do is fill out the `CONTRIBUTIONS.md` file. By
default, the file looks like this:

``` markdown
# Contributions to group submission

## Editor: FirstName LastName Member 1

*   Questions answered:

## FirstName LastName Member 2

*   Questions answered:

## FirstName LastName Member 3

*   Questions answered:

## FirstName LastName Member 4

*   Questions answered:
```

At a minimum, you must remove the `FirstName LastName Member` entries in
the template and fill in the names of the people in your group, indicate
which group member served as the editor, and state which questions were
written up by each member.

Additional information beyond this **should** be supplied, such as
indicating when a group member helped another group member edit an
answer or gave helpful comments in a Slack discussion. For example, one
group member’s contribution list may read as follows:

``` markdown
## Jane Smith

*   Questions answered: 4, 5, 6
*   Helped with editing on answers 8 and 9
*   Collaborated with group member Jack Williams on answering question 10
*   Pointed out spelling errors and suggested fixes to the document layout in the merged group document
```

## Working with a GitHub repository as a group

You will likely encounter some issues while working in a group-based
GitHub repository. In particular, you might find that when you click
*“Push”* in the **Git** tab of RStudio, that it doesn’t seem to work
and instead you get an annoying error message\! This will happen when
another member of your group has uploaded work before you did. While
this can be irritating to deal with, this is actually a good thing, as
it is GitHub’s way of protecting your files from accidential overwrites
and deletions.

So what should you do to keep things running smoothly? First, **always**
work in your own file, never in another person’s file. If you are not
the editor, then you should not edit `visualization_homework_group.Rmd`
either\! Also, do not remove or rename any files that are not your own.
Finally, when you are getting ready to work, following the procedure
below should help keep the error messages to a minimum:

1.  When you start working, you should begin by going to the **Git** tab
    and clicking *“Pull”* (notice this is not the same as *“Push”*).
    This will synchronize any new changes that your group may have made
    into your files.

2.  Work on your file as normal. When you have completed your work, save
    your file.

3.  Now we want to commit. **But first**, go to the **Git** tab and
    click *“Pull”* one more time to check for any other changes. Then,
    still in the **Git** tab, click the checkmark next to your updated
    file, type a message in the messagebox, and click the **Commit**
    button.

4.  If the updated file is no longer in the list of files in the **Git**
    tab, then your commit was successful.

5.  Click *“Push”* to upload your changed file.

### If the above advice doesn’t work…

If, even after following the advice below, you still encounter error
messages when Pulling from and Pushing to GitHub, please post about it
in your group’s private Slack channel. Be sure to tag me using `@Dr.
Glasbrenner`.

## How to submit

When you are ready to submit, be sure that everyone in your group has
committed and pushed their R Markdown files to Github. The editor should
do the following in RStudio Server:

1.  If it is not loaded already, open the RStudio project for the group
    homework assignment.

2.  Click on the **Git** tab in the upper-right window, then click
    *“Pull”* to make sure you have the latest version of all the
    files.

3.  Press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd> to knit the
    final submission to the PDF format.

4.  Download the PDF file to your computer.

5.  On Blackboard, find the **Visualization Homework (Group)**
    submission link for your group. Submit the PDF for your group to
    lock in your submission time.

The editor should confirm that the files for their group’s repository
webpage on GitHub are fully up-to-date, and that if I were to knit the
PDF file myself, it should be identical to what is uploaded to
Blackboard.

**For the group submissions, you do not need to open up a Pull Request
on GitHub.**

## Cheatsheets

You are encouraged to review and keep the following cheatsheets handy
while working on this assignment:

  - [RStudio
    cheatsheet](https://github.com/rstudio/cheatsheets/raw/master/rstudio-ide.pdf)
  - [RMarkdown
    cheatsheet](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf)
  - [RMarkdown
    reference](https://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf)
  - [`ggplot2`
    cheatsheet](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf)
