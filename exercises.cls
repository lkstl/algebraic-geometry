\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exercises}[2021/10/21]

\LoadClass[a4paper]{article}

\RequirePackage{amsmath}
\RequirePackage{amssymb}

\RequirePackage{fontspec}
\RequirePackage{unicode-math}

\RequirePackage{enumitem}
\RequirePackage{geometry}
\RequirePackage{mathtools}
\RequirePackage{multicol}
\RequirePackage{tikz-cd}

\geometry{top=2.5cm}
\setlength{\parindent}{0pt}
\setlength{\parskip}{\medskipamount}
\setenumerate[1]{label=(\alph*),topsep=0pt}
\setenumerate[2]{label=(\roman*),topsep=0pt}

\renewcommand{\title}{Hello}
\renewcommand{\maketitle}[6]{
  % #1 : University
  % #2 : Institute
  % #3 : Semester
  % #4 : Teacher
  % #5 : Teaching assistant
  % #6 : Course
  \pagestyle{empty}
  {#1}\hfill
  {#4}\\
  {#2}\hfill
  {#5}\\
  {#3}\\
  \begin{center}
    \Large\bfseries
    Exercises for {#6}
  \end{center}
  \vspace{1.5em}
}

\newcounter{exc}
\newenvironment{exercise}[1][]{
  \addtocounter{exc}{1}\textbf{Exercise \theexc.} \emph{#1}\par
}{\vspace{1.5em}}
\newenvironment{bonus}[1][]{
  \textbf{Bonusaufgabe.} \emph{#1}\par
}{\vspace{1.5em}}
